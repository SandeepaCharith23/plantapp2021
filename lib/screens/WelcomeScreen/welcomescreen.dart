import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:plantapp2021/components/RoundedButton.dart';
import 'package:plantapp2021/screens/RegistrationScreen/Registration.dart';

import 'package:plantapp2021/screens/LoginScreen/login_screen.dart';


class WelcomeScreen extends StatefulWidget {
static const String id='welcomescreen'; 

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{
 AnimationController? animationController;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController=AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
      );

      animationController!.forward();
      animationController!.addListener(() {
        setState(() {
          
        });
       // print(animationController!.value);
      });


  }

  @override
  void dispose() {
    animationController!.dispose();
    // TODO: implement dispose
    super.dispose();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.deepOrange,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
               image:AssetImage("assets/images/welcomescreenbackground.jpg"),
               fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
                
                  child: Row(
                  children: <Widget>[
                    
                    Hero(
                      tag:'Logotag' ,
                      child: Container(
                        child: Image.asset('assets/logos/logo.png'),
                        width: 40.0,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),

                    DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Agne',
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'විසිතුරු පැළෑටි සහ මත්ස්‍යයින්',
                          textAlign: TextAlign.center,
                          textStyle: TextStyle(
                            fontSize: 20,
                          ),
                          ),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                    // Text(
                    //   'Endemic Species -Srilanka',
                    //   style: TextStyle(
                    //     fontSize: 20,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    //   ),
                  ],
                ),
              ),

              SizedBox(height: 30.0,),
              RoundedButton(
                colour: Colors.lightBlueAccent,
              text: 'Login-පිවිසෙන්න',
              method: (){
                Navigator.pushNamed(context, LoginScreen.id);
              },),

                Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.deepOrangeAccent,
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.pushNamed(context, RegistrationPage.id);
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Register-ගිණුමක් ආරම්භ ',
                    ),
                    ),
                 
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}


