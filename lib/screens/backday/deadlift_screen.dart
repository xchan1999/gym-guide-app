import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';

class DeadLift extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DeadLiftState();
  }
}

class DeadLiftState extends State<DeadLift> {
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
                child: Image.asset('assets/back1.gif'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "BARBELL DEADLIFT",
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
              "The true king of compound movements, the barbell deadlift is a full-body move — building stronger legs, back, shoulders and arms. Its place in your next back workout is well deserved — as you work through the full range of motion, your upper-back muscles (rhomboids, traps, rear delts and lats) are firing away helping to keep your torso straight, while preventing your back from rounding and causing injury.",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Squat down and grasp a barbell with your hands roughly shoulder-width apart. Keep your chest up, pull your shoulders back and look straight ahead as you lift the bar. Focus on taking the weight back onto your heels and keep the bar as close as possible to your body at all times. Lift to thigh level, pause, then return under control to the start position.",
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
