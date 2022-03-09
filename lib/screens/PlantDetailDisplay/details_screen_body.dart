import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantapp2021/constrants.dart';
import 'package:plantapp2021/screens/components/RoundedButton.dart';

import 'PlantImagewithButton.dart';
import 'PlantPriceLocationOwnerDisplay.dart';
import 'ProductDetailsSideButtonCards.dart';

class DetailsScreenBody extends StatelessWidget {
   
  const DetailsScreenBody({ Key? key }) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
       
        children:<Widget> [
           PlantImagewithButton(size: size),
           PlantPriceLocationOwnerDisplay(plantLocation: 'Mirigama', plantName: 'Centella asiatica', plantPrice: 25.00,),
           Row(
             children: <Widget>
             [
               SizedBox(
                 width: size.width /2,
                 height: 80,
                 child: FlatButton(
                   color: KprimaryColour,
                   onPressed: (){},
                   child: Text(
                     "Buy Now",
                     style: TextStyle(
                       fontSize: 20,
                     ),
                     ),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.only(topRight: Radius.circular(20))
                   )
                 ),
               ),

               Expanded(
                 child: FlatButton(
                   color: KBackgroundColour,
                   onPressed: (){},
                   child: Text(
                     "Description",
                     style: TextStyle(
                       fontSize: 20,
                     ),
                     ),
                   

                 ), 
               )
             ],
           ),
        ],
      ),
    );
  }
}

