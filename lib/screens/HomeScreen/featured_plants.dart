import 'package:flutter/material.dart';
import 'package:plantapp2021/constrants.dart';
class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
                child: Row(
        children: <Widget>[
          FeaturedPlantCard(
            image: 'assets/images/plant01.jpg',
            press: (){},
            
            ),

            FeaturedPlantCard(
            image: 'assets/images/plant01.jpg',
            press: (){},
            
            ),

            FeaturedPlantCard(
            image: 'assets/images/plant01.jpg',
            press: (){},
            
            ),

            FeaturedPlantCard(
            image: 'assets/images/plant01.jpg',
            press: (){},
            
            ),

            

            
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key? key, 
    required this.image, 
    required this.press,
    
  }) : super(key: key);

  final String image;
  final Function press;

 

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
         onTap: press(),
          child: Container(
        margin: EdgeInsets.only(
          left: KdefaultPadding,
          top: KdefaultPadding/2,
          bottom: KdefaultPadding/2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10),
         image: DecorationImage(
           fit: BoxFit.cover,
           image: AssetImage(image),

         ),

        ),
        ),
    );
  }
}