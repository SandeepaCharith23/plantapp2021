import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:plantapp2021/components/RoundedButton.dart';
import 'package:plantapp2021/screens/HomeScreen/home_screen.dart';
import 'package:plantapp2021/constrants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationPage extends StatefulWidget {
  static const String id='registration';
  const RegistrationPage({ Key? key }) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _auth=FirebaseAuth.instance;
  String? emailaddress;
  String? password;

  bool ShowSpin=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: ShowSpin,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>
            [
              Flexible(
                flex: 1,
                child: Hero(
                  tag: 'Logotag',
                  child: Container(
                    height: 100.0,
                    child: Image.asset('assets/logos/logo.png'),
                  ),
                ),
              ),
      
              Flexible(
                child: SizedBox(
                  height: 8.0,
                ),
              ),
      
              Flexible(
                flex: 2,
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value)
                  {
                    emailaddress=value;
                  },
                  decoration: KTextFieldDecoration.copyWith(
                    hintText: 'Enter your Email',
                  ),
                ),
              ),
      
              Flexible(
                flex: 1,
                child: SizedBox(
                  height: 10.0,
                ),
              ),
      
               Flexible(
                 flex: 2,
                 child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  onChanged: (value){
                    password=value;
                  },
                  decoration: KTextFieldDecoration.copyWith(
                    hintText: 'Enter your Password',
                  ),
                           ),
               ),
      
              Flexible(
                flex: 1,
                child: SizedBox(
                  height: 10.0,
                ),
              ),
      
              Flexible(
                flex: 2,
                child: RoundedButton(
                  colour: Colors.lightBlueAccent,
                 text: 'Register User',
                  method: ()async{
                    print(emailaddress);
                    print(password);
                    setState(() {
                      ShowSpin=true;
                    });

                    try{
                      final user =await _auth.createUserWithEmailAndPassword(email: emailaddress!, password: password!);
                      print('Firebase Auth Done');
                      if(user != null)
                      {
                        Navigator.pushNamed(context, HomeScreen.id);
                      }

                      setState(() {
                      ShowSpin=false;
                    });
                    }catch(e)
                    {
                      print(e);
                    }
                  }
                  ),
              ),
      
      
      
      
              
            ],
          ),
        ),
      ),
    );
  }
}