import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:plantapp2021/screens/Page1-WelcomeScreen/welcomescreen.dart';
import 'package:plantapp2021/screens/Page2-LoginScreen/login_screen.dart';

import 'IconButtonWithCounter.dart';
import 'SearchField.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconButtonWithCounter(
            numberofItems: 1,
            press: () {},
            svgSrc: 'assets/icons/Cart Icon.svg',
          ),
          // IconButtonWithCounter(
          //   numberofItems: 0,
          //   press: () {},
          //   svgSrc: 'assets/icons/Log out.svg',
          // ),
          InkWell(
            child: IconButton(
                onPressed: () {
                  logout();
                  Navigator.pushNamed(context, WelcomeScreen.id);
                },
                icon: Icon(Icons.logout)),
          )
        ],
      ),
    );
  }

  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();

      Fluttertoast.showToast(
          msg: "SucccessFully Logout", gravity: ToastGravity.CENTER);
    } on FirebaseAuthException catch (error) {
      Fluttertoast.showToast(msg: error.message!, gravity: ToastGravity.BOTTOM);
    }
  }
}
