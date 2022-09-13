import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantapp2021/constrants.dart';
import 'package:plantapp2021/screens/ProductDetailsDisplay/expandabled_text_widget.dart';
import 'package:plantapp2021/widgets/app_Icon.dart';
import 'package:plantapp2021/widgets/big_text.dart';

class RecommendedProductDetails extends StatelessWidget {
  static const String id = 'RecommendedProductDetails';
  const RecommendedProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            //Section1-Icon
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            pinned: true,
            expandedHeight: 300,
            backgroundColor: KprimaryColour,
            //Section3:Sliverappbar Heading

            //Section2:Image display
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/plant (1).jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Center(child: BigText(text: "Product Description")),
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  top: 5,
                  bottom: 10,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 15,
                    right: MediaQuery.of(context).size.width / 15,
                  ),
                  child: ExpandableTextWidget(
                      productdetailstext:
                          "Like other aroids, many species of Anthurium plant can be grown as houseplants, or outdoors in mild climates in shady spots, including Anthurium crystallinum and Anthurium clarinervium with its large, velvety, dark green leaves and silvery white venation. Many hybrids are derived from Anthurium andraeanum or Anthurium scherzerianum because of their colorful spathes. They thrive in moist soils with high organic matter. In milder climates the plants can be grown in pots of soil. Indoors plants thrive at temperatures of 16–22 °C (61–72 °F) and at lower light than other house plants. Wiping the leaves off with water will remove any dust and insects. Plants in pots with good root systems will benefit from a weak fertilizer solution every other week. In the case of vining or climbing Anthuriums, the plants benefit from being provided with a totem to climb."),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 30,
              right: MediaQuery.of(context).size.width / 30,
              top: MediaQuery.of(context).size.height / 50,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconColor: Colors.white,
                  icon: Icons.add,
                  backgroundColor: KprimaryColour,
                  iconSize: 40,
                ),
                BigText(
                  text: "\$100.00" + "X" + "0",
                  color: Colors.blueAccent,
                  size: 30,
                ),
                AppIcon(
                  icon: Icons.remove,
                  backgroundColor: KprimaryColour,
                  iconColor: Colors.white,
                  iconSize: 40,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
            height: MediaQuery.of(context).size.height / 8,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
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
                  child: Icon(
                    Icons.favorite,
                    color: KprimaryColour,
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
        ],
      ),
    );
  }
}
