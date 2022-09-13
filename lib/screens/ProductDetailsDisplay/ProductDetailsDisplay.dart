import 'package:flutter/material.dart';
import 'package:plantapp2021/screens/ProductDetailsDisplay/expandabled_text_widget.dart';
import 'package:plantapp2021/widgets/app_Icon.dart';
import 'package:plantapp2021/widgets/big_text.dart';
import 'package:plantapp2021/widgets/iconandtextdetailsbottom.dart';
import 'package:plantapp2021/widgets/productdetailscoloum.dart';
import 'package:plantapp2021/widgets/small_text.dart';

import '../../constrants.dart';

class ProductDetailsDisplay extends StatelessWidget {
  static const String id = 'ProductDetailsDisplay';

  const ProductDetailsDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("current height is" + MediaQuery.of(context).size.height.toString());
    print("current width is" + MediaQuery.of(context).size.width.toString());
    return Scaffold(
      body: Stack(
        children: [
          //display image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height / 2.41,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/plant (1).jpg"),
                ),
              ),
            ),
          ),

          //display icons-cart icon and goto back icon
          Positioned(
            left: MediaQuery.of(context).size.width / 20,
            right: MediaQuery.of(context).size.width / 20,
            top: MediaQuery.of(context).size.height / 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart),
              ],
            ),
          ),

          //Product details display
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: MediaQuery.of(context).size.height / 3.2,
            child: Container(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 20,
                right: MediaQuery.of(context).size.width / 20,
                top: MediaQuery.of(context).size.height / 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Productsetailscoloumns(
                    enterText: 'Product',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  BigText(
                    text: "Introduction",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 40,
                  ),
                  //Product details expandable Text
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          productdetailstext:
                              "Like other aroids, many species of Anthurium plant can be grown as houseplants, or outdoors in mild climates in shady spots, including Anthurium crystallinum and Anthurium clarinervium with its large, velvety, dark green leaves and silvery white venation. Many hybrids are derived from Anthurium andraeanum or Anthurium scherzerianum because of their colorful spathes. They thrive in moist soils with high organic matter. In milder climates the plants can be grown in pots of soil. Indoors plants thrive at temperatures of 16–22 °C (61–72 °F) and at lower light than other house plants. Wiping the leaves off with water will remove any dust and insects. Plants in pots with good root systems will benefit from a weak fertilizer solution every other week. In the case of vining or climbing Anthuriums, the plants benefit from being provided with a totem to climb."),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),

      //bottom part-Cart Details
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
        height: MediaQuery.of(context).size.height / 8,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.remove,
                    color: KsmallTextColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  BigText(
                    text: "0",
                    color: KsmallTextColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.add,
                    color: KsmallTextColor,
                  )
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: KbuttonBackgroundColor,
              ),
              child: BigText(
                text: "Cart Amount | Rs.100",
                size: 15.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
