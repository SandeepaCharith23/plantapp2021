import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:plantapp2021/widgets/big_text.dart';
import 'package:plantapp2021/widgets/iconandtextdetailsbottom.dart';
import 'package:plantapp2021/widgets/productdetailscoloum.dart';
import 'package:plantapp2021/widgets/small_text.dart';

import '../../constrants.dart';

class productDisplay extends StatefulWidget {
  const productDisplay({Key? key}) : super(key: key);

  @override
  State<productDisplay> createState() => _productDisplayState();
}

class _productDisplayState extends State<productDisplay> {
  PageController pageController = PageController(viewportFraction: 0.85);
  //zoom in zoom out function
  var _currentPageValue = 0.0;

  double _scaleFactor = 0.8;
  double _height = 250;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        //get the current page
        _currentPageValue = pageController.page!;
        // print("Current page " + _currentPageValue.toString());
      });
    });
  }

  @override
  // ignore: must_call_super
  void dispose() {
    // leave the page controller value when user leave the page
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //color: Colors.amber,
          height: MediaQuery.of(context).size.height / 2.7,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildProductItem(position);
            },
          ),
        ),
        new DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue,
          decorator: DotsDecorator(
            color: Colors.black87, // Inactive color
            activeColor: Colors.redAccent,
            activeShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 100,
        ),

        //Second part of the page
        Container(
          margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width / 80,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular Item"),
              SizedBox(
                width: MediaQuery.of(context).size.width / 20,
              ),
              Container(
                child: BigText(
                  text: "--",
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 20,
              ),
              Container(
                child: SmallText(
                  text: "Most selling items",
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),

        //List of products
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 20,
                  right: MediaQuery.of(context).size.width / 20,
                  bottom: MediaQuery.of(context).size.height / 20,
                ),
                child: Row(
                  children: [
                    //Image section
                    Container(
                      width: MediaQuery.of(context).size.width / 4,
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.green,
                          image: DecorationImage(
                            image: AssetImage("assets/images/plant01.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Expanded(
                      child: Container(
                        height: MediaQuery.of(context).size.height / 5,
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 80,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BigText(
                                text: "Product name",
                                color: Colors.black,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 100,
                              ),
                              SmallText(text: "Product Description"),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Iconandtextdetailsbottom(
                                      icon: Icons.circle_sharp,
                                      text: "Normal",
                                      color: KsmallTextColor,
                                      iconColor: Colors.amber,
                                    ),
                                    SizedBox(
                                      width: 1,
                                    ),
                                    Iconandtextdetailsbottom(
                                      icon: Icons.location_on,
                                      text: "1Km",
                                      color: KsmallTextColor,
                                      iconColor: Colors.amber,
                                    ),
                                    SizedBox(
                                      width: 1,
                                    ),
                                    Iconandtextdetailsbottom(
                                      icon: Icons.access_time_rounded,
                                      text: "32min",
                                      color: KsmallTextColor,
                                      iconColor: Colors.amber,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ],
    );
  }

  Widget _buildProductItem(int index) {
    Matrix4 matrix = new Matrix4.identity();

    //check the current display products index and customised images when Slide right to left and left to right
    if (index == _currentPageValue.floor()) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currentTrans1 = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans1, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currentScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currentTrans2 = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans2, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currentTrans2 = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans2, 0);
    } else {
      var currentScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          //Image container
          Container(
            height: MediaQuery.of(context).size.height / 3.84,
            margin: EdgeInsets.only(left: 10, right: 10, top: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven ? Color(0xFF69c5df) : Color(0xFF5564d8),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/plant (1).jpg"))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 7.03,
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(5, 5),
                  ),
                ],
              ),

              //Text -Product Details
              child: Container(
                padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Productsetailscoloumns(
                  enterText: 'Product Name1',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
