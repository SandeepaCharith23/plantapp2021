import 'package:flutter/material.dart';
import 'package:plantapp2021/constrants.dart';
import 'package:plantapp2021/screens/Common_Components/ErrorForm.dart';
import 'package:plantapp2021/screens/Common_Components/default_button.dart';
import 'package:plantapp2021/screens/Page2-LoginScreen/components/CustomSuffixIcon.dart';

class SignUpScreen extends StatelessWidget {
  static const String id = "SignUpScreen";

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Text("Sign Up"),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //Heading and SubHeading
                Text(
                  "Register Account",
                  style: KheadingStyle,
                ),
                Text(
                  "Complete your Personal details \n or  Continue  with social media Account",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                //form for personal data-SignUp Form
                SignUpForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  late String email, password, confirmPassword;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: Column(
          children: [
            //Enter email address
            emailTextField(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),

            // //Enter the password
            TextFormField(
              obscureText: true,
              onSaved: (newValue) {
                password = newValue!;
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
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            // //Reenter the password
            TextFormField(
              obscureText: true,
              onSaved: (newValue) {
                confirmPassword = newValue!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return kPassNullError;
                } else if (password != confirmPassword) {
                  return kMatchPassError;
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Confirm Password",
                hintText: "Re-Enter Your Password",
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

            ErrorForm(errors: errors),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            DefaultButton(
              text: "Continue",
              press: () async {
                if (_formKey.currentState!.validate()) {
                  // _formKey.currentState!.save();
                  //go to complete account details filling
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField emailTextField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
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
    );
  }
}
