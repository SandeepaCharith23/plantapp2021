import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp2021/main.dart';

import '../../constrants.dart';
import 'ProductDetailsSideButtonCards.dart';

class PlantImagewithButton extends StatelessWidget {
  const PlantImagewithButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: KdefaultPadding * 3),
      child: SizedBox(
        height: size.height *0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: KdefaultPadding,vertical: KdefaultPadding ),
                child: Column(
                 children: <Widget>
                 [
                   Align(
                     alignment:Alignment.topLeft,
                     child: IconButton(
                       padding: EdgeInsets.symmetric(horizontal: KdefaultPadding),
                       icon: SvgPicture.asset("assets/icons/Back ICon.svg"),
                       onPressed: () { Navigator.pop(context); },),
                   ),
                   Spacer(),
                   ProductDetailsSideButtonCards(imagepath: "assets/icons/iconsproductdetails.png", press: (){},),
                   Spacer(),
                   ProductDetailsSideButtonCards(imagepath: "assets/icons/iconscondition.png", press: (){},),
                   Spacer(),
                   ProductDetailsSideButtonCards(imagepath: "assets/icons/iconslocation.png", press: (){},),
                   Spacer(),
                   ProductDetailsSideButtonCards(imagepath: "assets/icons/iconsprice.png", press: (){},),
                   Spacer(),
  
                 ],
      
                ),
              ),
              ),
            Container(
              height: size.height *0.8,
              width: size.width *0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
      
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 60,
                    color: KprimaryColour.withOpacity(0.3),
                  ),],
                image: DecorationImage(
                  image: AssetImage("assets/images/plant01.jpg"),
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft
                  )
              ),
      
            ),
          ],
        ),
      ),
    );
  }
}

