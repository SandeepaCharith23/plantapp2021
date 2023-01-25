import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:plantapp2021/Services/global_services.dart';
import 'package:plantapp2021/screens/Common_Components/RoundedButton.dart';
import 'package:plantapp2021/screens/Page2-LoginScreen/SignInScreen.dart';

import 'package:plantapp2021/screens/RegistrationScreen/Registration.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcomescreen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  late Animation<double> _animation1;
  late AnimationController _animationController1;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    animationController!.forward();
    animationController!.addListener(() {
      setState(() {});
      // print(animationController!.value);
    });

    _animationController1 =
        AnimationController(vsync: this, duration: const Duration(seconds: 50));

    _animation1 =
        CurvedAnimation(parent: _animationController1, curve: Curves.linear)
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((animationStatus) {
            if (animationStatus == AnimationStatus.completed) {
              _animationController1.reset();
              _animationController1.forward();
            }
          });
    _animationController1.forward();

    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    animationController!.dispose();
    // TODO: implement dispose
    _animationController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.deepOrange,
      body: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: loginUrlImage4,
            placeholder: (context, url) => Image.asset(
              'assets/images/welcomescreenbackground.jpg',
              fit: BoxFit.fill,
            ),
            fit: BoxFit.cover,
            errorWidget: (context, url, error) => const Icon(Icons.error),
            width: double.infinity,
            height: double.infinity,
            alignment: FractionalOffset(_animation1.value, 0),
          ),
          Padding(
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
                        tag: 'Logotag',
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
                              'PlantApp-2022-විසිතුරු පැළෑටි සහ මත්ස්‍යයින්',
                              textAlign: TextAlign.center,
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
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
                SizedBox(
                  height: 30.0,
                ),
                RoundedButton(
                  colour: Colors.lightBlueAccent,
                  text: 'Login-පිවිසෙන්න',
                  method: () {
                    // Navigator.pushNamed(context, LoginScreen.id);
                    Navigator.pushNamed(context, SignInScreen.id);
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.deepOrangeAccent,
                    child: MaterialButton(
                      onPressed: () {
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
        ],
      ),
    );
  }
}
