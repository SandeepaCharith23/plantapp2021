import 'package:flutter/material.dart';
import 'package:plantapp2021/screens/MainDashboard/NewPostBanner.dart';

class NewPostsBannersDisplay extends StatelessWidget {
  const NewPostsBannersDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          NewPostBanner(image: "assets/images/newpostbackgroundimage (1).jpg", postheading: 'New Post Heading', postcontain: 'Post Contain', press: () {  },),
          NewPostBanner(image: "assets/images/newpostbackgroundimage (2).jpg", postheading: 'New Post Heading', postcontain: 'Post Contain', press: () {  },),
          NewPostBanner(image: "assets/images/newpostbackgroundimage (3).jpg", postheading: 'New Post Heading', postcontain: 'Post Contain', press: () {  },),
        ],
      ),
    );
  }
}










