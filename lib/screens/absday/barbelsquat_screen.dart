import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';

class AbSquat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AbSquatState();
  }
}

class AbSquatState extends State<AbSquat> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ABS'),
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
                child: Image.asset('assets/abs5.gif'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "BARBELL BACK SQUAT",
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
              " With your feet shoulder-width apart, lift a barbell off the rig, centering it evenly across your shoulders. (This version of the squat targets the core, not the legs, and so you should be using far less weight than you would for a traditional back squat.) Send your glutes back like you’re lowering into a chair, bending at the knees as deeply as possible. Press through your heels to return to the starting position for one rep. Do 12 reps for one set.",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "“Think about maintaining tension in your abs throughout the entire movement,” says Wealth. “Once you have the movement mastered, you can add additional weights to the barbell. By going up in small increments, though, you’ll stay injury-free.”",
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
