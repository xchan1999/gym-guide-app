import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';
import 'package:gym_app_pratice/screens/tricepsday/benchdips_screen.dart';
import 'package:gym_app_pratice/screens/tricepsday/cableoverhead_screen.dart';
import 'package:gym_app_pratice/screens/tricepsday/diamondpressup_screen.dart';
import 'package:gym_app_pratice/screens/tricepsday/landmine_screen.dart';
import 'package:gym_app_pratice/screens/tricepsday/tricepskickback_screen.dart';
import 'package:gym_app_pratice/screens/tricepsday/tricepspressdown_screen.dart';

class Triceps extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TricepsState();
  }
}

class TricepsState extends State<Triceps> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('TRICEPS'),
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
              'TRICEPS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Divider(
              thickness: 1.0,
              color: Colors.black,
            ),
            Text(
              "If you dont live for something you'll die for nothing",
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
                                  return TricepsPressDown();
                                }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/triceps1.jpg',
                                fit: BoxFit.fill,
                                height: 180.0,
                              ))),
                    ), //Expanded
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return CableOverHead();
                                }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/triceps2.jpg',
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
                                  return KickBack();
                                }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/triceps3.jpg',
                                fit: BoxFit.fill,
                                height: 180.0,
                              ))),
                    ), //Expanded
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return BenchDips();
                                }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/triceps4.jpg',
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
                                  return LandMine();
                                }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/triceps5.jpg',
                                fit: BoxFit.fill,
                                height: 180.0,
                              ))),
                    ), //Expanded
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return DiamondPress();
                                }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/triceps6.jpg',
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
