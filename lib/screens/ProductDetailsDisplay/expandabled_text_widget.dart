import 'package:flutter/material.dart';
import 'package:plantapp2021/constrants.dart';
import 'package:plantapp2021/widgets/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String productdetailstext;

  const ExpandableTextWidget({Key? key, required this.productdetailstext})
      : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalfofText;
  late String secondHalfofText;

  bool isHiddenText = true;
  double textHeight = 200.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.productdetailstext.length > textHeight) {
      firstHalfofText =
          widget.productdetailstext.substring(0, textHeight.toInt());
      secondHalfofText = widget.productdetailstext
          .substring(textHeight.toInt() + 1, widget.productdetailstext.length);
    } else {
      firstHalfofText = widget.productdetailstext;
      secondHalfofText = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalfofText.isEmpty
          ? SmallText(text: firstHalfofText)
          : Column(
              children: [
                SmallText(
                  text: isHiddenText
                      ? (firstHalfofText + "...")
                      : (firstHalfofText + secondHalfofText),
                  size: 16,
                  color: KsmallTextColor,
                  height: 1.6,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isHiddenText = !isHiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        size: 18,
                        text: "Show More",
                        color: KsmallTextColor,
                      ),
                      Icon(
                        isHiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: KprimaryColour,
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
