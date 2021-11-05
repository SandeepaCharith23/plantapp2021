import 'package:flutter/material.dart';

import 'IconButtonWithCounter.dart';
import 'SearchField.dart';
class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),

          IconButtonWithCounter(
            numberofItems: 1,
             press: () {  },
              svgSrc: 'assets/icons/Cart Icon.svg',
              ),

          IconButtonWithCounter(
            numberofItems: 0,
             press: () {  },
              svgSrc: 'assets/icons/Bell.svg',
              ),
      
        ],
      ),
    );
  }
}



