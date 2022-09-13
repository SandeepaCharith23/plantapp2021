import 'package:flutter/material.dart';

import 'components/forgetPasswordBody.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static const String id = "ForgetPasswordScreen";
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Forget Password",
        ),
      ),
      body: ForgetPasswordBody(),
    );
  }
}
