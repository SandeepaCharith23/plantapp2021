import 'package:flutter/material.dart';
import 'package:plantapp2021/screens/ChatScreen/chatScreen.dart';
import 'package:plantapp2021/screens/HomeScreen/home_screen.dart';

class NavigationSection extends StatelessWidget {
  const NavigationSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                      boxShadow: [
                      BoxShadow(
                      offset: Offset(0,3),
                      blurRadius: 7,
                      spreadRadius:3.0 ,
                      color: Colors.grey.withOpacity(0.5)
                        ),
                          ],
                    
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                    onPressed: () { 
                       Navigator.pushNamed(context, ChatScreen.id);
                     }, 
                    icon: Image.asset(
                      'assets/icons/icons-chat-64.png',
                      fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      'Chat Screen',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                    ], 
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                      boxShadow: [
                      BoxShadow(
                      offset: Offset(0,3),
                      blurRadius: 7,
                      spreadRadius:3.0 ,
                      color: Colors.grey.withOpacity(0.5)
                        ),
                          ],
                    
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                    onPressed: () { 
                       Navigator.pushNamed(context,HomeScreen.id);
                     }, 
                    icon: Image.asset(
                      'assets/icons/icons-market-64.png',
                      fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      'MarketPlace',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                    ], 
                  ),
                ),
              ),

              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                      boxShadow: [
                      BoxShadow(
                      offset: Offset(0,3),
                      blurRadius: 7,
                      spreadRadius:3.0 ,
                      color: Colors.grey.withOpacity(0.5)
                        ),
                          ],
                    
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                    onPressed: () {  }, 
                    icon: Image.asset(
                      'assets/icons/icons-cart-64.png',
                      fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      'MyCart',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                    ], 
                  ),
                ),
              ),
  
            ],
          ),

          SizedBox(
            height: 10,
          ),

           Row(
            children: [
               Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                      boxShadow: [
                      BoxShadow(
                      offset: Offset(0,3),
                      blurRadius: 7,
                      spreadRadius:3.0 ,
                      color: Colors.grey.withOpacity(0.5)
                        ),
                          ],
                    
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                    onPressed: () {  }, 
                    icon: Image.asset(
                      'assets/icons/icons-knowledge-64.png',
                      fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      'Knowledge',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                    ], 
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                      boxShadow: [
                      BoxShadow(
                      offset: Offset(0,3),
                      blurRadius: 7,
                      spreadRadius:3.0 ,
                      color: Colors.grey.withOpacity(0.5)
                        ),
                          ],
                    
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                    onPressed: () {  }, 
                    icon: Image.asset(
                      'assets/icons/icons-advertisement-64.png',
                      fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      'Advertisemnet',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                    ], 
                  ),
                ),
              ),

              SizedBox(
                width: 10,
              ),
               Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                      boxShadow: [
                      BoxShadow(
                      offset: Offset(0,3),
                      blurRadius: 7,
                      spreadRadius:3.0 ,
                      color: Colors.grey.withOpacity(0.5)
                        ),
                          ],
                    
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                    onPressed: () {  }, 
                    icon: Image.asset(
                      'assets/icons/icons-profile-64.png',
                      fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      'Myprofile',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                    ], 
                  ),
                ),
              ),

              
            ],
          ),


        ],
      ),
    );
  }
}