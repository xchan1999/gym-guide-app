import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';

class ArmRow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ArmRowState();
  }
}

class ArmRowState extends State<ArmRow> {
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
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Image.asset('assets/back3.gif'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "DUMBELL SINGLE ARM ROW",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15.0,
            ),
            Divider(
              thickness: 3.0,
              color: Colors.black,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "GUIDE",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.red),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              " Another great move for your lats, the dumbbell single arm row works both sides of your body and helps you focus (and fix) weaker spots by smashing through strength imbalances on either side. A handy tip: don't let your shoulder drop at the bottom of the movement. Lock your torso to ensure your back lifts the weight, not your arm.",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Head to a flat bench and place your right hand against it under your shoulder, keeping your arm straight. Rest your right knee on the bench and step your other leg out to the side. With your free hand grab a dumbbell off the floor and row it up to your side until your upper arm is parallel with the floor. Lower slowly back to the floor and repeat.",
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
