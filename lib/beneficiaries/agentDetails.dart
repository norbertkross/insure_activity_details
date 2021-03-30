import 'package:flutter/material.dart';


class AgentDetails extends StatefulWidget {
  @override
  _AgentDetailsState createState() => _AgentDetailsState();
}

class _AgentDetailsState extends State<AgentDetails> {

  List heading = ["About","Activity History","Tasks","Notes"];
  int current = 0;

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController industry = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController idType = TextEditingController();
  TextEditingController idNumber = TextEditingController();
  TextEditingController dateOfIssue = TextEditingController();
  TextEditingController dateOfExpiry = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: <Color>[
                  Color(0xff8755ff),
                  Color(0xff6097ea),
                  Color(0xff51cafa),
                    ])          
                ),        
            ),        elevation: .0,
        backgroundColor: Color(0xff8755ff),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
           onPressed: (){}),
        ],
        centerTitle: true,
        title: Text("Agent Details"),
      leading: IconButton(icon: Icon(Icons.chevron_left_rounded), 
      onPressed: ()=>{Navigator.pop(context)},
      ),
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (__){
      __.disallowGlow();
      return false;
      },
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff8755ff),
                  Color(0xff6097ea),
                  Color(0xff51cafa),
                ]),
            ),
            child: Column(
              children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Wrap(
              alignment: WrapAlignment.spaceAround,
              children: [
                
                for(int i=0;i<=3;i++)

                GestureDetector(
                  onTap: (){
                    setState(() {
                      current = i;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:4.0,vertical:8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:current == i?  BorderRadius.circular(30.0):null,
                        border:current == i? Border.all(width: 2.0,color: Colors.yellow) : null,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:12.0,vertical: 6.0),
                        child: Text("${heading[i]}",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Theme.of(context).canvasColor,
                        ),),
                      ),
                    ),
                  ),
                ),                
              ],
            ),
          ),    

        SizedBox(height: 20.0,),

          ListTile(
            trailing: Container(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,                
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.star,color: Colors.white70,),
              )),
            title: Text("Aberor Norbert",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).canvasColor),              
              ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 4.0),
              child: Text("UI/UX Designer",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).canvasColor.withOpacity(.7)),             
              ),
            ),
          ),

        SizedBox(height: 20.0,),

          Padding(
            padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2.0,color: Theme.of(context).canvasColor),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  alignment: WrapAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 4.0),
                      child: Text("8/10",
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).canvasColor.withOpacity(.7)),             
                      ),
                    ),               
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 4.0),
                      child: Text("|",
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).canvasColor.withOpacity(.7)),             
                      ),
                    ),               
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 4.0),
                      child: Text("100",
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).canvasColor.withOpacity(.7)),             
                      ),
                    ),               
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 4.0),
                      child: Text("|",
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).canvasColor.withOpacity(.7)),             
                      ),
                    ),               
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 4.0),
                      child: Text("120 days",
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).canvasColor.withOpacity(.7)),             
                      ),
                    ),               
                  ],
                ),
              ),
            ),
          ),


        contactInfo(first: "Shock waves",iconFirst:Icons.exit_to_app,second: "+233 557 340 556",iconSecond:Icons.phone),
        contactInfo(first: "norbertaberor@gmail.com",iconFirst:Icons.mail,second: "Accra,Ghana",iconSecond:Icons.location_history),

        SizedBox(height: 15.0,),        

            ],
            ),
          ), 

          SizedBox(height: 12.0,),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("TAG",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  //color: Theme.of(context).disabledColor,
                ),),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  Text("ADD",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  // fontSize: 18.0,
                  color:Theme.of(context).disabledColor                
                ),),
                
                Icon(Icons.label,color: Theme.of(context).disabledColor,),

                ],),
              ),
          ], ), 


          Wrap(
            children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(width: 1.50,
              color: Theme.of(context).disabledColor),
          ),       
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 12.0),
              child: Text("Design x1"),
          ),       
              ),
            ),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(width: 1.50,
              color: Theme.of(context).disabledColor),
          ),       
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 12.0),
              child: Text("User Interface x2"),
          ),       
              ),
            ),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(width: 1.50,
              color: Theme.of(context).disabledColor),
          ),       
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 12.0),
              child: Text("UI x1"),
          ),       
              ),
            ),
          ],),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 4.0,),
            child: Divider(thickness: 2.0,),
          ),

          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
            padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 4.0,),
                child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text("TAKE DETAILS") ,
                     Container(
                       decoration: BoxDecoration(
                        color: Theme.of(context).disabledColor,
                         borderRadius: BorderRadius.circular(5.0),
                       ),
                       height: 5.0,
                       width: 50.0,
                       ),
                  ],
                ),
              ),
              SizedBox(height: 30.0,),
              textInput(label: "First name",controller:firstName),
              textInput(label: "last name",controller:lastName),
              textInput(label: "location",controller:location),
              textInput(label: "industry",controller:industry),
              textInput(label: "email",controller:email),
              textInput(label: "phone",controller:phone),
              textInput(label: "id type",controller:idType),
              textInput(label: "id number",controller:idNumber),
              textInput(label: "Date of issue",controller: dateOfIssue),
              textInput(label: "date of expiry",controller: dateOfExpiry),
            ],
          ),
        ],
      ),
      ),
    );
  }

  Widget contactInfo({String first,IconData iconFirst, String second,IconData iconSecond,}){
        return  Padding(
            padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 20.0),
            child: Container(              
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 4.0),
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          Icon(iconFirst ??Icons.settings,color: Theme.of(context).canvasColor.withOpacity(.7)),
                          SizedBox(width: 4.0,),
                          Text("${first??""}",
                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).canvasColor.withOpacity(.7)),             
                          ),
                        ],
                      ),
                    ),               
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 4.0),
                      child: Wrap(
                        children: [
                          Icon(iconSecond ?? Icons.settings,color: Theme.of(context).canvasColor.withOpacity(.7)),
                          SizedBox(width: 4.0,),
                          Text("${second??""}",
                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).canvasColor.withOpacity(.7)),             
                          ),
                        ],
                      ),
                    ),                                
                  ],
                ),
              ),
            ),
          );    
        }


  Widget textInput({@required String label, TextEditingController controller}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(vertical:12.0,horizontal: 20.0),
          child: Text(label.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).disabledColor.withOpacity(.5)),
          ),
         ),

         Padding(
          padding: const EdgeInsets.symmetric(vertical:.0,horizontal: 20.0),
           child: Column(
             children: [
               Container(
                 height: 30.0,
                 child: TextField(  
                   controller: controller, 
                   decoration: InputDecoration(
                     border: InputBorder.none,
                   ),        
                 ),
               ),
               Divider(
                 thickness: 2.0,
                 color: Theme.of(context).disabledColor.withOpacity(.2),
               )
             ],
           ),
         ),
            ],
          );
        }
      }