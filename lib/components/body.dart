import 'package:flutter/material.dart';
import 'package:plantapp2021/components/featured_plants.dart';

import 'package:plantapp2021/components/header_with_searchbox.dart';
import 'package:plantapp2021/components/recommanded_plants.dart';
import 'package:plantapp2021/components/title_with_more.dart';
import 'package:plantapp2021/constrants.dart';



class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //this will provide total height
    Size size=MediaQuery.of(context).size;

    //this eanble scrolling on small device
    return SingleChildScrollView(
          child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          //HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            title: "Recommanded",
            press: (){},
          ),

          RecommandedPlants(), 
          TitleWithMoreButton(title: "Featured Plants", press: (){}),
          FeaturedPlants(),
          SizedBox(height: KdefaultPadding),

        ],
      ),
    );
  }
}






