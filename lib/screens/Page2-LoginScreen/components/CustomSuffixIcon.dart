import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key? key,
    required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        MediaQuery.of(context).size.width / 50,
        MediaQuery.of(context).size.width / 50,
        MediaQuery.of(context).size.width / 50,
        MediaQuery.of(context).size.width / 50,
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: MediaQuery.of(context).size.height * 0.02,
        width: MediaQuery.of(context).size.width * 0.02,
      ),
    );
  }
}
