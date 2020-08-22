import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/backday/deadlift_screen.dart';
import 'package:gym_app_pratice/screens/backday/invertedrow_screen.dart';
import 'package:gym_app_pratice/screens/backday/pullup_screen.dart';
import 'package:gym_app_pratice/screens/backday/singlearmrow_screen.dart';
import 'package:gym_app_pratice/screens/backday/supportedrow_screen.dart';
import 'package:gym_app_pratice/screens/backday/tbar_screen.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';

class Back extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BackState();
  }
}

class BackState extends State<Back> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BACK'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Pics();
                }));
              }),
        ],
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Back',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Divider(
              thickness: 1.0,
              color: Colors.black,
            ),
            Text(
              "Character is who you are when no one's watching.",
              textAlign: TextAlign.center,
            ),
            Divider(
              thickness: 1.0,
              color: Colors.black,
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return DeadLift();
                                }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/back1.gif',
                                fit: BoxFit.fill,
                                height: 180.0,
                              ))),
                    ), //Expanded
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return PullUp();
                                }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/back2.gif',
                                fit: BoxFit.fill,
                                height: 180.0,
                              ))),
                    ), //Expanded
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return ArmRow();
                                }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/back3.gif',
                                fit: BoxFit.fill,
                                height: 180.0,
                              ))),
                    ), //Expanded
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return SupportedRow();
                                }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/back4.gif',
                                fit: BoxFit.fill,
                                height: 180.0,
                              ))),
                    ), //Expanded
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return InvertedRow();
                                }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/back5.gif',
                                fit: BoxFit.fill,
                                height: 180.0,
                              ))),
                    ), //Expanded
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return BarRows();
                                }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/back6.gif',
                                fit: BoxFit.fill,
                                height: 180.0,
                              ))),
                    ), //Expanded
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
