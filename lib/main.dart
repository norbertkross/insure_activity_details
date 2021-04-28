import 'package:flutter/material.dart';
import 'package:insure_activity_details/beneficiaries/agentDetails.dart';
import 'package:insure_activity_details/beneficiaries/beneficiaryHome.dart';
import 'package:insure_activity_details/beneficiaries/businessDetails.dart';
import 'package:insure_activity_details/insureranceAgent/activityBoard.dart';
import 'package:insure_activity_details/insureranceAgent/agentProfile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Color(0xFF2D8F30);
  //Color(0xFFF66973);
  //Color(0xFFD9B84A);
  //Color(0xFF4D9BCF);
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
        //BusinessDetails(), 
        //AgentDetails(), 
        //BeneficiaryHome(),
        //ActivityBoard(),
       AgentProfile(),
    );
  }
}
