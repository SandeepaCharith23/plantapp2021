import 'package:flutter/material.dart';

const KprimaryColour = Color(0xFF0C9869);
const KTextColour = Color(0xFF3C4046);
const KTextColour1 = Color(0xFF178DD8);
const KBackgroundColour = Color(0xFFF9F8FD);
const KIconsBackgroundColour = Color(0xFFa2a2b1);

const KhomePageBackground = Color(0xFFfbfcff);
const KgradientFirst = Color(0xff0f17ad);
const KgradientSecond = Color(0xFF6985e8);
const KhomePageTitle = Color(0xFF302f51);
const KhomePageSubtitle = Color(0xFF414160);
const KhomePageDetail = Color(0xFF6588f4);
const KhomePageIcons = Color(0xFF3b3c5c);
const KhomePageContainerTextSmall = Color(0xFFf4f5fd);
const KhomePageContainerTextBig = Color(0xFFffffff);
const KhomePagePlanColor = Color(0xFFa2a2b1);
const KsecondPageTopIconColor = Color(0xFFb7bce8);
const KsecondPageTitleColor = Color(0xFFfefeff);
const KsecondPageContainerGradient1stColor = Color(0xFF5564d8);
const KsecondPageContainerGradient2ndColor = Color(0xFF6279dc);
const KsecondPageIconColor = Color(0xFFfafafe);
const KloopColor = Color(0xFF6d8dea);
const KsetsColor = Color(0xFF9999a9);
const KcircuitsColor = Color(0xFF2f2f51);
const KbigTextColor = Color(0xFF332d2b);
const KsmallTextColor = Color(0xFF3F4943);
const KbuttonBackgroundColor = Color(0xFFADFCCF);

const double KdefaultPadding = 20.0;

const KheadingStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  height: 2,
  color: Colors.black,
);

const KTextFieldDecoration = InputDecoration(
  hintText: 'Enter your value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

final RegExp passwordValidatorRegExp = RegExp(r"^(?=.*[0-9]).{7,20}$");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kInvalidPasswordError = "Please Enter Valid Password";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
