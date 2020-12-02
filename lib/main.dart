import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedvalue = null;
  bool ischecked = false;
  bool ischecked2 = false;
  List <String> city = ["Eluru" ,"Gopanapalem"  , "Denduluru"];
  String dropbox = "Eluru";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Page "),
          actions: [
            PopupMenuButton(
                onSelected: (item) {
                  print("hai");
                },
                itemBuilder:( BuildContext context) => <PopupMenuEntry<String>>[
                  PopupMenuItem(child: Text("settings"),   value: "settings",),
                  PopupMenuItem(child: Text("share"), value: "share",),
                ])
          ],
        ),

        body: SafeArea(
          child:SingleChildScrollView(
            child:
            Container(
            child:   Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: IconButton(icon: Icon(Icons.arrow_back),alignment: Alignment.topLeft, onPressed: (){

                    }),
                  ),
                  Container(

                    alignment: Alignment.center,
                      child: Text("Login Form " , style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)),
                  TextField(
                    maxLength: 25,
                    autofocus: debugInstrumentationEnabled,
                    decoration: InputDecoration(

                      labelText: "enter email" ,
                      helperText: "enter your primary email",
                      prefix: Icon(Icons.email),
                        helperStyle: TextStyle(color: Colors.black , fontSize: 8),
                        hintText: "ex: Lakshmiprasad108@mail.com",
                      hintStyle: TextStyle(color: Colors.orange),

                      isDense: true,
                      filled: true,
                      fillColor: Colors.grey,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(10)

                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green, width: 2),
                            borderRadius: BorderRadius.circular(10)

                        )
                    ),
                  ),

                  SizedBox(height: 20,),

                  TextField(
                    maxLength: 10,
                    textCapitalization: TextCapitalization.words,
                    autofocus: debugInstrumentationEnabled,
                    decoration: InputDecoration(

                      labelText: "Password" ,
                      helperText: "password must contain 5 Alpha and 5 num",
                      labelStyle: TextStyle(color: Colors.red),

                       helperStyle: TextStyle(color: Colors.black , fontSize: 8),
                      prefix: Icon(Icons.lock),
                       
                      hintStyle: TextStyle(color: Colors.white),

                      isDense: true,
                      filled: true,
                      fillColor: Colors.grey,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(10)
                            
                      ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green, width: 2),
                            borderRadius: BorderRadius.circular(10)

                        )
                    ),
                  ),

                  SizedBox(height: 20,),
                    RaisedButton(onPressed: (){

                    },
                      child: Text("submite"),
                      padding: EdgeInsets.symmetric(vertical:10, horizontal: 60 ),
                    ),

                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Gender"),

                         Row(
                           children: [
                             Radio(value: 0, groupValue: selectedvalue, onChanged: (val){
                              setState(() {
                                selectedvalue = val ;
                              });
                        }),
                             Text("male")
                           ],
                         ),

                      Row(
                        children: [
                          Radio(value: 1, autofocus: true,groupValue: selectedvalue, onChanged: (val){
                            setState(() {
                              selectedvalue = val ;
                            });
                          }),
                          Text("female")
                        ],
                      ),
                      Row(
                        children: [
                          Radio(value: 2, groupValue: selectedvalue, onChanged: (val){
                            setState(() {

                              activeColor: Color(0xffFFBD11);
                              selectedvalue = val ;
                            });
                          }),
                          Text("others")
                        ],
                      ),








                ],
              ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Choose Course :"),

                      Row(
                        children: [
                          Text("fluter"),
                          Checkbox(value: ischecked, onChanged: (val){
                            setState(() {
                              ischecked = val;
                            });
                          })
                        ],
                      ),
                      Row(
                        children: [
                          Text("dart"),
                          Checkbox(value: ischecked2, onChanged: (val){
                            setState(() {
                              ischecked2 = val;
                            });
                          })
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),
                        Column(
  children: [
    Text(" Select area"),
    DropdownButton(   value: dropbox ,items: city.map((item) {
      return DropdownMenuItem(
        child: Text(item),
        value : item,
      );
    }).toList() ,

        onChanged:(item){
          setState(() {
            dropbox = item;
          });
        })
  ],
),

                  SizedBox(height: 20,),




                  OutlineButton(
                    child: Text("Outline Button", style: TextStyle(fontSize: 20.0),),
                    highlightedBorderColor: Colors.red,
                    color: Colors.green,
                    splashColor: Colors.pink,

                    onPressed: () {},
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton.extended(
                        onPressed: () {
                          print("hai");
                        },
                        icon: Icon(Icons.save),
                        label: Text("print"),

                      ),
                    ],
                  ),








                ]
            )
            ),
          ),
        ),
      ),
      ),
    );
  }
}
