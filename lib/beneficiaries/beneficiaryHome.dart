import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class BeneficiaryHome extends StatefulWidget {
  @override
  _BeneficiaryHomeState createState() => _BeneficiaryHomeState();
}

class _BeneficiaryHomeState extends State<BeneficiaryHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xffFFFFFF),
      // appBar: AppBar(
      //   leading: Icon(Icons.close),
      //   centerTitle: true,
      //   title: Text("Transfer to"),
      //   ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (__) {
          __.disallowGlow();
          return false;
        },
        child: ListView(
          children: [
            SizedBox(
              height: 4.0,
            ),
            ListTile(
              leading: Icon(
                    Icons.close,
                    size: 30.0,
                  ),
              title: Text(
                "Transfer to",
                style: TextStyle(
                  fontSize: 26.0,
                  color: Theme.of(context).disabledColor,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              child: Divider(
                thickness: 2.0,
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 8.0),
                          child: Text(
                            "Add a new beneficiary",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).disabledColor,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 3.0,
                                color: Theme.of(context).disabledColor,
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.add,
                              size: 30.0,
                              color: Theme.of(context).disabledColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 14.0,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 2.0),
                        child: Text(
                          "My other accounts",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),


                  for (int i = 0; i <= 5; i++) Column(
                    children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 0.0),
                    child: Divider(
                      thickness: 2.0,
                      color: Theme.of(context).disabledColor.withOpacity(.07),
                    ),
                  ),      
                  SizedBox(height: 12.0,),
                      sliddely(i),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget topOfSlider(int i) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: i%3 ==1? Theme.of(context).disabledColor: Color(0xff8cfbc3),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 4.0,
                ),
                child: Text("Otto Knows",style: TextStyle(
                  color: Theme.of(context).canvasColor,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
            child: Text(
              "J Wait | EUR",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                  horizontal: 12.0, vertical: 0.0),
                  child: Text(
                    "FRI 2021 03 31 78XXXXXXXXXXXX32",
                    style: TextStyle(
                      color: Theme.of(context).disabledColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),

              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 12.0),
                child: Icon(Icons.chevron_right_rounded,
                color: Theme.of(context).disabledColor,),
              ),

            ],
          ),
        ],
      ),
    );
  }




  Widget sliddely(int i) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: Container(
        child: topOfSlider(i),
      ),
      // actions: <Widget>[
      //   IconSlideAction(
      //     caption: 'Archive',
      //     color: Colors.blue,
      //     icon: Icons.archive,
      //     onTap: (){},
      //   ),
      // ],
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Edit',
          color: Colors.black45,
          icon: Icons.edit,
          onTap: () {},
        ),
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () => {},
        ),
      ],
    );
  }
}
