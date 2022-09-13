import 'package:flutter/material.dart';
import 'package:plantapp2021/screens/SignUpScreen/SignUpScreen.dart';

import '../../constrants.dart';

class NoAccountSignUp extends StatelessWidget {
  const NoAccountSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't Have an Account?",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignUpScreen.id);
          },
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: 16,
              color: KprimaryColour,
            ),
          ),
        )
      ],
    );
  }
}
