import 'package:flutter/material.dart';
import 'package:plantapp2021/screens/PlantDetailDisplay/details_screen_body.dart';




class DetailsScreen extends StatelessWidget {
  static const String id="detailsscreen";
  const DetailsScreen({ Key? key }) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsScreenBody(),
    );
  }
}