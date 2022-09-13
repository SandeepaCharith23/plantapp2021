import 'package:flutter/material.dart';
import 'package:plantapp2021/screens/Common_Components/default_button.dart';

class LoginSuccessScreen extends StatelessWidget {
  static const String id = 'LoginSuccessScreen';
  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Image.asset(
              "assets/images/success.png",
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Text(
              "Login Success",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: DefaultButton(
                text: "Back to Home",
                press: () {},
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
