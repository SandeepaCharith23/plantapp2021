import 'package:flutter/material.dart';
import 'package:plantapp2021/screens/MainDashboard/DashboardBody.dart';
class MainDashboard extends StatelessWidget {

  static const String id='MainDashboard';
  const MainDashboard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: DashboardBody(),
    );
  }
}