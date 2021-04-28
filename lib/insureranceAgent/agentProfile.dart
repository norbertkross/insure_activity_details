import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insure_activity_details/beneficiaries/agentDetails.dart';
import 'package:insure_activity_details/beneficiaries/beneficiaryHome.dart';
import 'package:insure_activity_details/beneficiaries/businessDetails.dart';
import 'package:insure_activity_details/insureranceAgent/activityBoard.dart';


class AgentProfile extends StatefulWidget {
  @override
  _AgentProfileState createState() => _AgentProfileState();
}

class _AgentProfileState extends State<AgentProfile> {

  goto(Widget page){
    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>page));
  }

double size = 140.0;
String image = "assets/lady.jpg";
String notifications = "2";
String messages = "5";
int numOfItems = 7;


List optionItems = [
  {"name":"ACCOUNTS",
   "icon":"assets/User Group Man Woman_96px.png",
   "ontap":BusinessDetails(),
  },
  {"name":"CONTACTS",
   "icon":"assets/Address Book_96px.png",
   "ontap":AgentDetails(),
  },
  {"name":"ACTIVITIES",
   "icon":"assets/Workflow_80px.png",
   "ontap":ActivityBoard(),   
  },
  {"name":"REPORT",
   "icon":"assets/Ratings_80px.png",
   "ontap":BeneficiaryHome(),   
  },
  {"name":"CALENDER",
   "icon":"assets/Tear Off Calendar_96px.png",
   "ontap":Scaffold(appBar: AppBar(
     leading: IconButton(icon: Icon(Icons.chevron_left), onPressed: ()=>{},),
   ),),   
  },
  {"name":"SETTINGS",
   "icon":"assets/Settings 3_96px.png",
   "ontap":Scaffold(appBar: AppBar(
     leading: IconButton(icon: Icon(Icons.chevron_left), onPressed: ()=>{},),
   ),),   
  },
  {"name":"FAQs",
   "icon":"assets/FAQ_96px.png",
   "ontap":Scaffold(appBar: AppBar(
     leading: IconButton(icon: Icon(Icons.chevron_left), onPressed: ()=>{},),
   ),),  
  },
  {"name":"HELP",
   "icon":"assets/Assistant_80px.png",
   "ontap":Scaffold(appBar: AppBar(
     leading: IconButton(icon: Icon(Icons.chevron_left), onPressed: ()=>{},),
   ),),   
  },
  {"name":"ABOUT US",
   "icon":"assets/Library_96px.png",
   "ontap":Scaffold(appBar: AppBar(
     leading: IconButton(icon: Icon(Icons.chevron_left), onPressed: ()=>{},),
   ),),   
  },
  ];

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    //SystemChrome.setEnabledSystemUIOverlays([]);

  }

  @override
  Widget build(BuildContext context) {

  Size mq = MediaQuery.of(context).size;
  TextStyle instructionsTextDecoration = TextStyle(
    color: Theme.of(context).disabledColor,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );    

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Icon(Icons.edit_location_sharp,color: Colors.redAccent,size: 35,),
        actions: [
          
          //  Notification Icons
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.notifications,color: Theme.of(context).disabledColor,),
              ),

              Positioned(
                top: 0.0,
                right:1.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(notifications),
                  ),
                ),
              )
            ],
          ),


          //  Notification Icons
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.mail,color: Theme.of(context).disabledColor,),
              ),

              Positioned(
                top: 0.0,
                right:1.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(messages),
                  ),
                ),
              )
            ],
          ),

          SizedBox(width: 10.0,),

        ],
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (__){
      __.disallowGlow();
      return false;
      },
      child: ListView(
        children: [

          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                //color: Colors.redAccent,
                ),
                height: size,
                width: size,
                child: Center(
                  child: Stack(
                    children: [

                      Center(
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: SizedBox(  
                            height: 130,
                            width: 130,                                          
                            child: CircularProgressIndicator(
                              strokeWidth: 10.0,
                              value: .75,
                              backgroundColor: Theme.of(context).disabledColor.withOpacity(.08),
                              valueColor: AlwaysStoppedAnimation<Color>(Color(0xff12f717)),
                            ),
                            ),
                        ),
                      ),

                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Card(
                            elevation: 20,
                            margin: EdgeInsets.all(0.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(size-30.0),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(image)),
                              ),
                            ),
                          ),
                        ),
                      )
                      
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 20.0,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical:6.0, horizontal: 16.0),
                    child: Text("Insurance Agent",style: TextStyle(
                      color: Theme.of(context).canvasColor,
                      fontSize: 17.0,
                    ),),
                  ),
                ),
              ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical:6.0, horizontal: 6.0),
              child: Text("Good Morning, Evans",style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                    ),),
              ),
              

              Padding(
              padding: const EdgeInsets.symmetric(vertical:6.0,horizontal: 20.0),
                child: RichText(
                textAlign: TextAlign.center,  
                text: TextSpan(text: "Today you have ",
                style: instructionsTextDecoration,
                children: <InlineSpan>[
                  TextSpan(text: "4 appointments",style: TextStyle(color: Colors.indigoAccent)),
                  TextSpan(text: " and "),
                  TextSpan(text: " 5 activities",style: TextStyle(color: Colors.purple)),
                  TextSpan(text: " to complete"),
                ]),),
              ),

        SizedBox(height: 20,),

          Container(
            //color: Colors.red,
            height: 100.0,
            width: mq.width,            
            child: ListView.builder(
              itemCount: numOfItems??5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext itemBuilder,int index){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          gradient: LinearGradient(
                            colors: [
                            Colors.purple,
                            Colors.indigoAccent,
                          ]),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        width: mq.width*.8,
                        child: Column(
                          children: [
                            SizedBox(
                              width: mq.width*.8,
                              child: Wrap(
                                alignment: WrapAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top:4.0,right: 14.0),
                                    child: Text("Upcoming",style: TextStyle(fontWeight: FontWeight.w500,color: Theme.of(context).canvasColor),),
                                  ),
                                  // SizedBox(width: 12.0,),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    //color: Colors.blue,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage("assets/Clock_96px.png")),
                                  ),
                                  ),
                                ),

                                Flexible(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Internal Conference",style: TextStyle(color: Theme.of(context).canvasColor,fontSize: 19,),),
                                    SizedBox(height: 6.0,),
                                    Text("Internal Conference",style: TextStyle(color: Theme.of(context).canvasColor,fontSize: 15,),),
                                  ],
                                ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
            }),
          ),

          SizedBox(
            height: 30,
          ),

          // Option Items

          Wrap(
            children: [
              for(int j =0; j<= optionItems.length-1;j++)

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap:(){goto(optionItems[j]!=null? optionItems[j]["ontap"] : Container());},
                  child: Card(
                    elevation: 20.0,
                  margin: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),                  
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        // color: Colors.red,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(optionItems[j]["icon"])),
                              ),
                              height: 50,
                              width: 50,
                            ),
                          ),
                          SizedBox(height: 6,),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 4.0),
                            child: Text(optionItems[j]["name"],
                            style: TextStyle(fontWeight: FontWeight.bold,
                            color: Theme.of(context).disabledColor),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),

          SizedBox(height: 30,),
            ],
          ),
        ],
      ),
      ),
    );
  }
}