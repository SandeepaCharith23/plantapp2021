import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {
   RoundedButton({
   required this.colour,
   required this.text,
   required this.method, 
  }) ;

  final Color colour;
  final String text;
  final Function method;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
        child: MaterialButton(
          onPressed: (){
            if(method != null)
            {
              method();
            }
           
            
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
          ),
          ),
       
      ),
      );
  }
}