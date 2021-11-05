import 'package:flutter/material.dart';

class NewPostSelection extends StatelessWidget {
  const NewPostSelection({
    Key? key, 
    required this.selectionheadline,
    required this.pressmethod,
  }) : super(key: key);

  final String selectionheadline;
  final GestureTapCallback pressmethod;

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$selectionheadline",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,

            ),
            ),

            GestureDetector(
              child: Text('See More'),
              onTap: pressmethod,
            ),
        ],
      ),
    );
  }
}