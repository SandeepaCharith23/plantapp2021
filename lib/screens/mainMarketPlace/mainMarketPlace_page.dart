import 'package:flutter/material.dart';
import 'package:plantapp2021/constrants.dart';
import 'package:plantapp2021/screens/mainMarketPlace/productDisplay.dart';
import 'package:plantapp2021/widgets/big_text.dart';
import 'package:plantapp2021/widgets/small_text.dart';

class MainMarketPlace extends StatefulWidget {
  static const String id = 'mainMarketPlace';
  const MainMarketPlace({Key? key}) : super(key: key);

  @override
  State<MainMarketPlace> createState() => _MainMarketPlaceState();
}

class _MainMarketPlaceState extends State<MainMarketPlace> {
  @override
  Widget build(BuildContext context) {
    print("current height is" + MediaQuery.of(context).size.height.toString());
    print("current width is" + MediaQuery.of(context).size.width.toString());
    return Scaffold(
      body: Column(
        children: [
          //header section
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Srilanka",
                        color: KprimaryColour,
                        size: 25,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "Mirigama",
                            color: Colors.black,
                          ),
                          Icon(Icons.arrow_drop_down)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: KprimaryColour,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //product display area
          Expanded(
              child: SingleChildScrollView(
            child: productDisplay(),
          ))
        ],
      ),
    );
  }
}
