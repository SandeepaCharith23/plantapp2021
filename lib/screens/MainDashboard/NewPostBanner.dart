import 'package:flutter/material.dart';

class NewPostBanner extends StatelessWidget {
  const NewPostBanner({
    Key? key, 
    required this.image,
    required this.postheading, 
    required this.postcontain,
    required this.press,
  }) : super(key: key);

  final String image,postheading,postcontain;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: 300,
        height: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Stack(
            children: [
              Image.asset(
              "$image",
              fit: BoxFit.fill,
              ),

              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter ,
                    end: Alignment.bottomCenter, 
                    colors: [
                      Color(0xFF343434).withOpacity(0.5),
                      Color(0xFF343434).withOpacity(0.15)
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: "$postheading\n",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
              
                      ),
              
                      TextSpan(
                        text: "$postcontain",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
              
                      ),
                    ],
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