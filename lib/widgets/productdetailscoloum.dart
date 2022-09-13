import 'package:flutter/material.dart';
import 'package:plantapp2021/widgets/iconandtextdetailsbottom.dart';
import 'package:plantapp2021/widgets/small_text.dart';

import '../constrants.dart';
import 'big_text.dart';

class Productsetailscoloumns extends StatelessWidget {
  final String enterText;

  const Productsetailscoloumns({Key? key, required this.enterText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: enterText,
          size: MediaQuery.of(context).size.height / 34.15,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //star widget
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      )),
            ),
            SizedBox(
              width: 5,
            ),
            SmallText(text: "4.5"),
            SizedBox(
              width: 5,
            ),
            SmallText(text: "1200"),
            SizedBox(
              width: 5,
            ),
            SmallText(
              text: "Comments",
              size: 10,
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Iconandtextdetailsbottom(
              icon: Icons.circle_sharp,
              text: "Normal",
              color: KsmallTextColor,
              iconColor: Colors.amber,
            ),
            SizedBox(
              width: 5,
            ),
            Iconandtextdetailsbottom(
              icon: Icons.location_on,
              text: "1Km",
              color: KsmallTextColor,
              iconColor: Colors.amber,
            ),
            SizedBox(
              width: 5,
            ),
            Iconandtextdetailsbottom(
              icon: Icons.access_time_rounded,
              text: "32min",
              color: KsmallTextColor,
              iconColor: Colors.amber,
            ),
          ],
        ),
      ],
    );
  }
}
