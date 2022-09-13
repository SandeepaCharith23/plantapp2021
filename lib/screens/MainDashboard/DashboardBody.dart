import 'package:flutter/material.dart';

import 'package:plantapp2021/screens/MainDashboard/NavigationSection.dart';

import 'package:plantapp2021/screens/MainDashboard/NewPostsBannersDisplay.dart';
import 'package:plantapp2021/screens/MainDashboard/NewPostsHeadingSection.dart';

import 'AdvertisementBanner.dart';
import 'ButtonCategories.dart';
import 'HomeHeader.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              HomeHeader(),
              SizedBox(
                height: 20,
              ),
              AdvertisementBanner(),
              SizedBox(
                height: 20,
              ),
              ButtonCategories(),
              SizedBox(
                height: 20,
              ),
              NavigationSection(),
              SizedBox(
                height: 20,
              ),
              NewPostsHeadingSection(),
              SizedBox(
                height: 20,
              ),
              NewPostsBannersDisplay(),
            ],
          ),
        ),
      ),
    );
  }
}
