import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:plantapp2021/screens/HomeScreen/home_screen.dart';
import 'package:plantapp2021/constrants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:plantapp2021/screens/Dashboard/Dashboard.dart';
import 'package:plantapp2021/screens/MainDashboard/MainDashboard.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'loginscreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? useremail;
  String? userpassword;
  final _auth = FirebaseAuth.instance;

  bool showSpin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/loginbackground.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: ModalProgressHUD(
          inAsyncCall: showSpin,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: Hero(
                    tag: 'Logotag',
                    child: Container(
                      height: 200.0,
                      child: Image.asset('assets/logos/logo.png'),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: 50.0,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: TextField(
                    onChanged: (value) {
                      useremail = value;
                    },
                    decoration: KTextFieldDecoration.copyWith(
                        hintText: 'Enter Your User Email'),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: 10.0,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: TextField(
                      obscureText: true,
                      onChanged: (value) {
                        userpassword = value;
                      },
                      decoration: KTextFieldDecoration.copyWith(
                        hintText: 'Enter your Password',
                      )),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: 25.0,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Material(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () async {
                        setState(() {
                          showSpin = true;
                        });

                        try {
                          final user1 = await _auth.signInWithEmailAndPassword(
                              email: useremail!, password: userpassword!);
                          if (user1 != null) {
                            Navigator.pushNamed(context, MainDashboard.id);
                          }

                          setState(() {
                            showSpin = false;
                          });
                        } on FirebaseAuthException catch (error) {
                          Fluttertoast.showToast(
                              msg: error.message!,
                              gravity: ToastGravity.BOTTOM);
                        }
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: Text('Log In'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
