import 'package:flutter/material.dart';
import 'package:plantapp2021/constrants.dart';
import 'package:plantapp2021/screens/PlantDetailDisplay/details_screen.dart';

import 'RecommandedPlantCard.dart';


class RecommandedPlants extends StatelessWidget {
  const RecommandedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
                child: Row(
        children:<Widget> [
          RecommandedPlantCard( 
           image: "assets/images/plant01.jpg",
           title: "Sandeepa",
           country: "Srilankan",
           price: 100,
           press: (){
             Navigator.pushNamed(context, DetailsScreen.id);
           },
          ),

          RecommandedPlantCard(
           image: "assets/images/plant01.jpg",
           title: "Charith",
           country: "Indian",
           price: 100,
           press: (){
             Navigator.pushNamed(context, DetailsScreen.id);
           },
          ),

          RecommandedPlantCard(
           image: "assets/images/plant01.jpg",
           title: "Gihan",
           country: "japanese",
           price: 100,
           press: (){
             Navigator.pushNamed(context, DetailsScreen.id);
           },
          ),

          RecommandedPlantCard(
           image: "assets/images/plant01.jpg",
           title: "Sandeepa",
           country: "Japan",
           price: 100,
            press: (){
             Navigator.pushNamed(context, DetailsScreen.id);
           },
           
          ),
        ],
      ),
    );
  }
}

