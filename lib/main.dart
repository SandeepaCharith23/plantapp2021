import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:plantapp2021/screens/MainDashboard/MainDashboard.dart';
import 'package:plantapp2021/screens/HomeScreen/home_screen.dart';

import 'package:plantapp2021/constrants.dart';
import 'package:plantapp2021/screens/Dashboard.dart';
import 'package:plantapp2021/screens/chatScreen.dart';
import 'package:plantapp2021/screens/details/AddSpecies.dart';
import 'package:plantapp2021/screens/login_screen.dart';
import 'package:plantapp2021/screens/welcomescreen.dart';
import 'package:plantapp2021/screens/Registration.dart';


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
      theme: ThemeData(
        scaffoldBackgroundColor: KBackgroundColour,
       primaryColor: KprimaryColour,
       textTheme:Theme.of(context).textTheme.apply(bodyColor: KTextColour) ,
      
      ),
      initialRoute: MainDashboard.id,
      //initialRoute: WelcomeScreen.id,
      routes: <String,WidgetBuilder> {
       WelcomeScreen.id:(context)=>WelcomeScreen(),
       LoginScreen.id:(context)=>LoginScreen(),
       HomeScreen.id:(context)=>HomeScreen(),
       RegistrationPage.id:(context)=>RegistrationPage(),
       AddSepcies.id:(context)=>AddSepcies(),
       Dashboard.id:(context)=>Dashboard(),
       ChatScreen.id:(context)=>ChatScreen(),
       MainDashboard.id:(context)=>MainDashboard(),

      },
       //HomeScreen(),
    );
  }
}

