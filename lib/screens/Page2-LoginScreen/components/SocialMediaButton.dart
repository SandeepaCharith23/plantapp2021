import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constrants.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        width: MediaQuery.of(context).size.width / 10,
        height: MediaQuery.of(context).size.height / 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: KIconsBackgroundColour,
        ),
        padding: EdgeInsets.all(5),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
