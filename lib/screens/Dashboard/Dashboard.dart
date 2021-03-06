import 'package:flutter/material.dart';
import 'package:plantapp2021/screens/AddSpecies.dart';
import 'package:plantapp2021/screens/MainDashboard/MainDashboard.dart';
import 'package:plantapp2021/screens/ChatScreen/chatScreen.dart';

import 'package:plantapp2021/screens/HomeScreen/home_screen.dart';

class Dashboard extends StatefulWidget {
  static const String id='DashboardScreen';
  const Dashboard({ Key? key }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            
      
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: 50.0,
                  ),
                ),
                

               

                Flexible(
                  flex: 2,
                  child: Material(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () 
                      { 
                      Navigator.pushNamed(context, ChatScreen.id);
                       },
                      minWidth: 100.0,
                    height: 42.0,
                    child: Text(
                      'Chat Screen'
                    ),
                  
                    ),
                  ),
                  ),

                  
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: 50.0,
                  ),
                ),


                Flexible(
                  flex: 2,
                  child: Material(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () 
                      { 
                        Navigator.pushNamed(context, AddSepcies.id);
                      
                       },
                      minWidth: 100.0,
                    height: 42.0,
                    child: Text(
                      'Add Species'
                    ),
                  
                    ),
                  ),
                  ),

              Flexible(
                flex: 1,
                child: SizedBox(
                  height: 50,
                ),
                ),

                Flexible(
                  flex: 2,
                  child: Material(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () 
                      { 
                        Navigator.pushNamed(context, MainDashboard.id);
                      
                       },
                      minWidth: 100.0,
                    height: 42.0,
                    child: Text(
                      'Main Dashboard',
                    ),
                  
                    ),
                  ),
                  ),


                  Flexible(
                flex: 1,
                child: SizedBox(
                  height: 50,
                ),
                ),

                Flexible(
                  flex: 2,
                  child: Material(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () 
                      { 
                        Navigator.pushNamed(context, HomeScreen.id);
                      
                       },
                      minWidth: 100.0,
                    height: 42.0,
                    child: Text(
                      'Explore Market',
                    ),
                  
                    ),
                  ),
                  ),


                  Flexible(
                flex: 1,
                child: SizedBox(
                  height: 50,
                ),
                ),

                Flexible(
                  flex: 2,
                  child: Material(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () 
                      { 
                        //Navigator.pushNamed(context, AddSepcies.id);
                      
                       },
                      minWidth: 100.0,
                    height: 42.0,
                    child: Text(
                      'Photoes',
                    ),
                  
                    ),
                  ),
                  ),

          ],
        ),
      ),
    );
  }
}