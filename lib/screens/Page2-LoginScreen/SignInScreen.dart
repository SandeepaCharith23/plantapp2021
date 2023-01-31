import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:plantapp2021/Services/GoogleSignInProvider.dart';
import 'package:plantapp2021/constrants.dart';
import 'package:plantapp2021/screens/Common_Components/NoAccountSignUp.dart';

import 'package:plantapp2021/screens/components/default_button.dart';
import 'package:provider/provider.dart';
import '../MainDashboard/MainDashboard.dart';
import 'components/SignInForm.dart';
import 'components/SocialMediaButton.dart';

class SignInScreen extends StatelessWidget {
  static const String id = "SingInScreen";

  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text(
          "Sign In",
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //welcome text-1
                  Text(
                    "WELCOME--PLANTAPP-2022",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width / 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  Text(
                    "Sign in with your email and password \n or continue with Social media account",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  SignInForm(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialMediaButton(
                        icon: 'assets/icons/google-icon.svg',
                        press: () {
                          // final provider = Provider.of<GoogleSignInProvider>(
                          //   context,
                          //   listen: false,
                          // ).googleLoginMethod();

                          //_googleSignIn(context);
                        },
                      ),
                      SocialMediaButton(
                        icon: 'assets/icons/facebook-2.svg',
                        press: () {},
                      ),
                      SocialMediaButton(
                        icon: 'assets/icons/twittericon.svg',
                        press: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  NoAccountSignUp(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

bool _isLoading = false;

Future<void> _googleSignIn(context) async {
  final googleSignIn = GoogleSignIn();
  final googleAccount = await googleSignIn.signIn();
  if (googleAccount != null) {
    final googleAuth = await googleAccount.authentication;
    if (googleAuth.accessToken != null && googleAuth.idToken != null) {
      try {
        await FirebaseAuth.instance
            .signInWithCredential(GoogleAuthProvider.credential(
          idToken: googleAuth.idToken,
          accessToken: googleAuth.accessToken,
        ));
        Navigator.pushNamed(context, MainDashboard.id);
      } on FirebaseException catch (error) {
        Fluttertoast.showToast(
            msg: error.message!, gravity: ToastGravity.BOTTOM);
      } catch (error) {
      } finally {}
    }
  }
}
