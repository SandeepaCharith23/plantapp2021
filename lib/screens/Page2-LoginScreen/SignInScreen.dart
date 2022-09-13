import 'package:flutter/material.dart';
import 'package:plantapp2021/constrants.dart';
import 'package:plantapp2021/screens/Common_Components/NoAccountSignUp.dart';

import 'package:plantapp2021/screens/components/default_button.dart';
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
                        press: () {},
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
