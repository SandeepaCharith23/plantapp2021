import 'package:flutter/material.dart';
class NewPostsHeadingSection extends StatelessWidget {
  const NewPostsHeadingSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       Text(
       "See More News ...",
       style: TextStyle(
       fontSize: 25,
       fontWeight: FontWeight.bold,
       
         ),
         ),
       

        GestureDetector(
          child: Text('See More'),
          onTap: (){
           //Navigate to the New Post 
           },
           )
      ],
      ),
    );
  }
}