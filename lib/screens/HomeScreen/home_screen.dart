import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp2021/components/body.dart';
import 'package:plantapp2021/constrants.dart';

class HomeScreen extends StatelessWidget {
  static const String id='homescreen'; 
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      
      elevation: 4,
      leading: IconButton
      (
        icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: (){},
      ),
    );
  }
}

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: KdefaultPadding * 2,
        right: KdefaultPadding * 2,
        bottom: KdefaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(offset: Offset(0,-10),
          blurRadius: 35,
          color: KprimaryColour.withOpacity(0.38)
          ),
          ]
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: SvgPicture.asset("assets/icons/homeicon.svg"),
          onPressed: (){},
          ),

          IconButton(icon: SvgPicture.asset("assets/icons/homeicon.svg"),
          onPressed: (){},
          ),

          IconButton(icon: SvgPicture.asset("assets/icons/homeicon.svg"),
          onPressed: (){},
          ),
        ],
      ),
    );
  }
}