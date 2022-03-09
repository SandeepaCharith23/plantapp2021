import 'package:flutter/material.dart';

import '../../constrants.dart';
class PlantPriceLocationOwnerDisplay extends StatelessWidget {
  const PlantPriceLocationOwnerDisplay({
    Key? key,
     required this.plantName,
      required this.plantLocation,
       required this.plantPrice,
  }) : super(key: key);

  final String plantName,plantLocation;
  final double plantPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:<Widget> [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: RichText(
            text: TextSpan(
              children: [
              TextSpan(
              text: "$plantName \n",
              style: Theme.of(context).textTheme.headline5!.copyWith(
              color: KTextColour,
              fontWeight:FontWeight.bold,
               ), 
              ),
          
              TextSpan(
               text: "$plantLocation",
               style: Theme.of(context).textTheme.headline6!.copyWith(
               color: KTextColour1,
               fontWeight:FontWeight.bold,
             ), 
          ),
                 
              ],
            ),
          ),
        ),
       //////////////////
        Spacer(),
       //////////////////
       Padding(
          padding: const EdgeInsets.all(10.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
              TextSpan(
              text: "Rs.$plantPrice",
              style: Theme.of(context).textTheme.headline5!.copyWith(
              color: KTextColour,
              fontWeight:FontWeight.bold,
               ), 
              ),
                 
              ],
            ),
          ),
        ),
       
      ],
    );
  }
}

