import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/services.dart';


class ActivityBoard extends StatefulWidget {
  @override
  _ActivityBoardState createState() => _ActivityBoardState();
}

class _ActivityBoardState extends State<ActivityBoard> {

String notifications = "2";
String messages = "5";  
CalendarController _calendarController;

List _selectedEvents = [];
DateTime daySelected = DateTime.now();

@override
void initState() {
  super.initState();
      //SystemChrome.setEnabledSystemUIOverlays([]);
  _calendarController = CalendarController();
}

@override
void dispose() {
  _calendarController.dispose();
  super.dispose();
}



  void _onDaySelected(DateTime day, List events, List holidays) {
    //print('CALLBACK: _onDaySelected');
    setState(() {
      _selectedEvents = events;
      daySelected = day;
      print(day);
    });
  }

  @override
  Widget build(BuildContext context) {

  Size mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: GestureDetector(
          onTap: (){},
          child: Wrap(
            children: [
              Text("September",style: TextStyle(color: Theme.of(context).disabledColor),),
              Icon(Icons.arrow_drop_up_rounded,color: Theme.of(context).disabledColor),
            ],
          ),
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(icon: Icon(Icons.chevron_left,size: 35,color: Colors.redAccent,), 
        onPressed: (){Navigator.pop(context);}),
        // Icon(Icons.edit_location_sharp,color: Colors.redAccent,size: 35,),
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

          // BODY

          // Date section
          Card(
            child:
                Container(
                  child: TableCalendar(
                    calendarController: _calendarController,
                    onDaySelected: _onDaySelected,
                  ),
                ),
              ),   


          // Items Selection
          TimeLineActivity(mq: mq,timeStart: "10:43 PM",timeEnd: "12:23 PM",timeLeft: "1hr",largerPrority: false,),
          TimeLineActivity(mq: mq,timeStart: "10:43 PM",timeEnd: "12:23 PM",timeLeft: "1hr",largerPrority: true,linearGradientColor: LinearGradient(colors: [Colors.orange,Colors.brown,]),),
          TimeLineActivity(mq: mq,timeStart: "10:43 PM",timeEnd: "12:23 PM",timeLeft: "1hr",largerPrority: false,),
          TimeLineActivity(mq: mq,timeStart: "10:43 PM",timeEnd: "12:23 PM",timeLeft: "1hr",largerPrority: true,),

        ],
      ),
      ),    
    );
  }
}


class TimeLineActivity extends StatefulWidget {
  final mq;
  final String heading;
  final String subheading;
  final String timeStart;
  final String timeEnd;
  final String timeLeft;
  final bool largerPrority;
  final LinearGradient linearGradientColor;

  const TimeLineActivity({Key key, this.mq, this.heading, this.subheading, this.timeStart, this.timeEnd, this.timeLeft, this.largerPrority = true, this.linearGradientColor}) : super(key: key);
  
  @override
  _TimeLineActivityState createState() => _TimeLineActivityState();
}

class _TimeLineActivityState extends State<TimeLineActivity> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10.0),
      child: Column(
        children: [
          Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      
                       Text("${widget.timeStart}",style: TextStyle(color: Theme.of(context).disabledColor,fontWeight: FontWeight.bold),),

                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                            Text(widget.timeStart != null && widget.timeEnd != null? "${widget.timeStart.length > widget.timeEnd.length? widget.timeStart:widget.timeEnd}" :"12:23 PM",
                            style: TextStyle(color:Colors.transparent,fontWeight: FontWeight.bold),),

                              ],
                            ),
                            Flexible(
                              child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal:8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            gradient:widget.linearGradientColor?? LinearGradient(
                              colors: [
                              Colors.purple,
                              Colors.indigoAccent,
                            ]),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          width: widget.mq.width,
                          child: Column(
                            children: [
                              SizedBox(
                                width: widget.mq.width,
                                child: Wrap(
                                  alignment: WrapAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:4.0,right: 14.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                        widget.largerPrority ==true ? Icon(Icons.timelapse,size: 16,color: Theme.of(context).canvasColor,) : Container(),
                                        widget.largerPrority ==true ? Text(widget.timeLeft??" Upcoming",style: TextStyle(fontWeight: FontWeight.w500,color: Theme.of(context).canvasColor),)  : Container(),
                                        ],
                                      ),
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
                                    width: 8,
                                    height: 8,
                                    ),
                                  ),

                                  Flexible(child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                      
                                      Flexible(child: Text(widget.heading??"Heading",style: TextStyle(color: Theme.of(context).canvasColor,fontSize: 19,),)),

                                    Row(
                                        
                                        mainAxisSize: MainAxisSize.min,
                                        //mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                        widget.largerPrority !=true ?  Icon(Icons.timelapse,size: 16,color: Theme.of(context).canvasColor,) : Container(width: 2.0,),
                                        widget.largerPrority !=true ?  Text(widget.timeLeft??" Upcoming",style: TextStyle(fontWeight: FontWeight.w500,color: Theme.of(context).canvasColor),) : Container(width: 2.0,),
                                          SizedBox(width: 14.0,),
                                          ],
                                        ),

                                        ],
                                      ),
                                      SizedBox(height: 6.0,),
                                      Text(widget.subheading??"sub heading",style: TextStyle(color: Theme.of(context).canvasColor,fontSize: 15,),),
                                      widget.largerPrority ==true ? SizedBox(height: 10.0,):SizedBox(height: 4.0,),
                                    ],
                                  ))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
            ],
          ),
    Text("${widget.timeEnd}",style: TextStyle(color: Theme.of(context).disabledColor,fontWeight: FontWeight.bold),),                  
    ],
  ),
  
  Padding(
    padding: const EdgeInsets.symmetric(vertical:8.0),
    child: Divider(thickness: 2.0,),
  )
        ],
      ),
    );
  }
}