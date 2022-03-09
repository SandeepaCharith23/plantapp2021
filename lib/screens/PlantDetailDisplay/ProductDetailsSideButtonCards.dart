import 'package:flutter/material.dart';

import '../../constrants.dart';
class ProductDetailsSideButtonCards extends StatelessWidget {
  const ProductDetailsSideButtonCards({
    Key? key, required this.imagepath, required this.press,
  }) : super(key: key);

  final String imagepath;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Container(
        height: 60,
        width: 60,
        padding: EdgeInsets.all(KdefaultPadding/2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow:[
            BoxShadow(
              offset: Offset(10, 15),
              blurRadius: 22,
              color: KprimaryColour.withOpacity(0.5),
            ),
             BoxShadow(
              offset: Offset(10, 15),
              blurRadius: 22,
              color:KprimaryColour.withOpacity(0.5),
            ),
          ],
        ),
    
        child: Image(
          image: AssetImage(imagepath),
        ),
      ),
    );
  }
}