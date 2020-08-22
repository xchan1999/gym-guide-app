import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/bicepsday/cablebarcurl_screen.dart';
import 'package:gym_app_pratice/screens/bicepsday/cablehammer_screen.dart';
import 'package:gym_app_pratice/screens/bicepsday/dumbelcurl_screen.dart';
import 'package:gym_app_pratice/screens/bicepsday/hammercurl_screen.dart';
import 'package:gym_app_pratice/screens/bicepsday/preachercurl_screen.dart';
import 'package:gym_app_pratice/screens/bicepsday/preacherreverse_screen.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';


class Biceps extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BicepsState();
  }
}

class BicepsState extends State<Biceps> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BICEPS'),
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
              'BICEPS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Divider(
              thickness: 1.0,
              color: Colors.black,
            ),
            Text(
              "Hard work beats talent when talent does'nt work hard.",
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
                                  return DumbellCurl();
                                }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/biceps1.jpg',
                                fit: BoxFit.fill,
                                height: 180.0,
                              ))),
                    ), //Expanded
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return HammerCurl();
                                }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/biceps2.jpg',
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
                                  return PreacherCurl();
                                }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/biceps3.jpg',
                                fit: BoxFit.fill,
                                height: 180.0,
                              ))),
                    ), //Expanded
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return PreacherReverse();
                                }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/biceps4.jpg',
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
                                  return BarCurl();
                                }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/biceps5.jpg',
                                fit: BoxFit.fill,
                                height: 180.0,
                              ))),
                    ), //Expanded
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return CableHammer();
                                }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/biceps6.jpg',
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
