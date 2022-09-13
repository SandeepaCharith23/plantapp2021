import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:plantapp2021/screens/AddSpecies.dart';

import 'package:plantapp2021/screens/MainDashboard/MainDashboard.dart';
import 'package:plantapp2021/screens/HomeScreen/home_screen.dart';

import 'package:plantapp2021/screens/Dashboard/Dashboard.dart';
import 'package:plantapp2021/screens/ChatScreen/chatScreen.dart';

import 'package:plantapp2021/screens/Page1-WelcomeScreen/welcomescreen.dart';
import 'package:plantapp2021/screens/Page2-LoginScreen/SignInScreen.dart';
import 'package:plantapp2021/screens/Page2-LoginScreen/login_screen.dart';
import 'package:plantapp2021/screens/Page2-LoginScreen/login_success.dart';
import 'package:plantapp2021/screens/Page3_Forget_Password_Screen/forget_Password.dart';
import 'package:plantapp2021/screens/PlantDetailDisplay/details_screen.dart';
import 'package:plantapp2021/screens/ProductDetailsDisplay/ProductDetailsDisplay.dart';
import 'package:plantapp2021/screens/ProductDetailsDisplay/recommanded_product_details.dart';
import 'package:plantapp2021/screens/SignUpScreen/SignUpScreen.dart';

import 'package:plantapp2021/screens/RegistrationScreen/Registration.dart';
import 'package:plantapp2021/screens/mainMarketPlace/mainMarketPlace_page.dart';
import 'package:plantapp2021/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: themeData(),

      initialRoute: WelcomeScreen.id,
      //initialRoute: LoginScreen.id,
      //initialRoute: MainMarketPlace.id,
      routes: <String, WidgetBuilder>{
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginSuccessScreen.id: (context) => LoginSuccessScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignInScreen.id: (context) => SignInScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        RegistrationPage.id: (context) => RegistrationPage(),
        AddSepcies.id: (context) => AddSepcies(),
        Dashboard.id: (context) => Dashboard(),
        ChatScreen.id: (context) => ChatScreen(),
        MainDashboard.id: (context) => MainDashboard(),
        DetailsScreen.id: (context) => DetailsScreen(),
        MainMarketPlace.id: (context) => MainMarketPlace(),
        ProductDetailsDisplay.id: (context) => ProductDetailsDisplay(),
        RecommendedProductDetails.id: (context) => RecommendedProductDetails(),
        ForgetPasswordScreen.id: (context) => ForgetPasswordScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
      },
      //HomeScreen(),
    );
  }
}
