import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:plantapp2021/screens/Common_Components/ErrorForm.dart';
import 'package:plantapp2021/screens/Common_Components/default_button.dart';

import 'package:plantapp2021/screens/MainDashboard/MainDashboard.dart';
import 'package:plantapp2021/screens/Page3_Forget_Password_Screen/forget_Password.dart';

import '../../../constrants.dart';
import 'CustomSuffixIcon.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>(); //key form
  String? email, password;
  bool remeberbox = false;
  final List<String> errors = [];

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          //Input filed1 -Email
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) {
              email = newValue;
            },
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
            height: MediaQuery.of(context).size.height / 20,
          ),

          //Input filed2 -PassWord
          TextFormField(
            obscureText: true,
            onSaved: (newValue) {
              password = newValue;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return kPassNullError;
              } else if (!passwordValidatorRegExp.hasMatch(value)) {
                return kInvalidPasswordError;
              }
            },
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter Your Password",
              suffixIcon: CustomSuffixIcon(
                svgIcon: "assets/icons/Lock.svg",
              ),
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
                borderSide: BorderSide(color: KTextColour),
                gapPadding: 10,
              ),
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),

          //Space for display errors
          ErrorForm(errors: errors),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),

          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Remember text checkBox
                  Checkbox(
                    value: remeberbox,
                    activeColor: KprimaryColour,
                    onChanged: (value) {
                      setState(() {
                        remeberbox = value!;
                      });
                    },
                  ),
                  Text("Rememebr Me"),
                  Spacer(),

                  //forget password field
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPasswordScreen()));
                      },
                      child: Text(
                        "Forget Password",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          DefaultButton(
            text: "Sign In to Account",
            press: () async {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                try {
                  final user1 = await _auth.signInWithEmailAndPassword(
                      email: email!, password: password!);
                  if (user1 != null) {
                    Navigator.pushNamed(context, MainDashboard.id);
                  }
                } on FirebaseAuthException catch (error) {
                  Fluttertoast.showToast(
                      msg: error.message!, gravity: ToastGravity.BOTTOM);
                }

                //if all are valid then do this
                //Navigator.pushNamed(context, MainDashboard.id);
              }
            },
          ),
        ],
      ),
    );
  }
}
