import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';
import 'package:gym_app_pratice/screens/shoulderday/frontraises_screen.dart';
import 'package:gym_app_pratice/screens/shoulderday/lateralraise_screen.dart';
import 'package:gym_app_pratice/screens/shoulderday/overhead_screen.dart';
import 'package:gym_app_pratice/screens/shoulderday/seatedpress_screen.dart';
import 'package:gym_app_pratice/screens/shoulderday/shrug_screen.dart';
import 'package:gym_app_pratice/screens/shoulderday/sidelat_screen.dart';

class Shoulder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ShoulderState();
  }
}

class ShoulderState extends State<Shoulder> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SHOULDERS'),
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
              'SHOULDER',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Divider(
              thickness: 1.0,
              color: Colors.black,
            ),
            Text(
              "When it starts to hurt, thats when the set starts.",
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
                              return OverHead();
                            }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/barbeloverheadshoulderpress.jpg',
                                fit: BoxFit.fill,
                                height: 180.0,
                              ))),
                    ), //Expanded
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SeatedPress();
                            }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/seateddumbellshoulderpress.jpg',
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
                              return FrontRaise();
                            }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/frontraise.jpg',
                                fit: BoxFit.fill,
                                height: 180.0,
                              ))),
                    ), //Expanded
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LatRaise();
                            }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/bentoverdumbellraise.jpg',
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
                              return SideLatRaise();
                            }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/dumbelllateralraise.jpg',
                                fit: BoxFit.fill,
                                height: 180.0,
                              ))),
                    ), //Expanded
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Shrug();
                            }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/shrugs.jpg',
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
