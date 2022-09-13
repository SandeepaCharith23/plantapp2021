import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constrants.dart';

class IconButtonWithCounter extends StatelessWidget {
  const IconButtonWithCounter({
    Key? key,
    required this.svgSrc,
    this.numberofItems = 0,
    required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int numberofItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        //Overflow: Overflow.visible,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: KprimaryColour.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: SvgPicture.asset(svgSrc),
              onPressed: () {},
            ),
          ),
          if (numberofItems != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    '$numberofItems',
                    style: TextStyle(
                      fontSize: 10,
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
