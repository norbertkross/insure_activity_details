import 'package:flutter/material.dart';
import 'package:insure_activity_details/beneficiaries/beneficiaryHome.dart';
import 'package:insure_activity_details/insureranceAgent/activityBoard.dart';
import 'package:insure_activity_details/insureranceAgent/agentProfile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Insurerity',

      // themeMode:ThemeMode.dark,
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   ), 

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
      BeneficiaryHome()
       //ActivityBoard(),
       //AgentProfile(),
    );
  }
}
