import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:plantapp2021/screens/Common_Components/ErrorForm.dart';
import 'package:plantapp2021/screens/Common_Components/NoAccountSignUp.dart';
import 'package:plantapp2021/screens/Common_Components/default_button.dart';

import 'package:plantapp2021/screens/Page2-LoginScreen/components/CustomSuffixIcon.dart';

import '../../../constrants.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Forget Password",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "You will receive an Email to\n Reset your Password",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            ForgetPasswordForm()
          ],
        ),
      ),
    );
  }
}

class ForgetPasswordForm extends StatefulWidget {
  const ForgetPasswordForm({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordForm> createState() => _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgetPasswordForm> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: _emailController,
              validator: (value) {
                if (value!.isEmpty) {
                  return kEmailNullError;
                } else if (!emailValidatorRegExp.hasMatch(value)) {
                  return kInvalidEmailError;
                }
              },
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter Your emailaddress",
                suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg"),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  gapPadding: 10,
                  borderSide: BorderSide(color: KTextColour),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: KTextColour,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            DefaultButton(
              text: "Reset Password",
              press: () {
                if (_formKey.currentState!.validate()) {
                  //forget Password method
                  forgetPasswordmethod();
                }
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            NoAccountSignUp(),
          ],
        ),
      ),
    );
  }

  Future forgetPasswordmethod() async {
    try {
      // User? user = FirebaseAuth.instance.currentUser;
      // print(user!.email.toString());
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text("Password Reset Link sent to your,Please Check it"),
            );
          });
    } on FirebaseAuthException catch (error) {
      // Fluttertoast.showToast(msg: error.message!, gravity: ToastGravity.BOTTOM);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(
                error.message.toString().toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          });
    }
  }
}
