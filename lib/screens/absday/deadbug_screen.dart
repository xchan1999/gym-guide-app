import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';

class DeadBug extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DeadBugState();
  }
}

class DeadBugState extends State<DeadBug> {
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
                child: Image.asset('assets/abs2.gif'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "DEAD BUG",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
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
              "Lay face up on the floor with arms straight above your shoulders. To start, bring your knees directly over your hips and bend at the knee so that your calf forms a 90-degree angle with your thigh. Next, simultaneously lower your left arm above your head while straightening your right leg and sending it towards the floor. Pause, return to the starting position, and then repeat on the opposite side. Do 14 alternating reps to complete one set.",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Make sure your lower back stays in contact with the floor, and try to keep your breathing as regular as possible,” says Denzel Allen, a StrongFirst trainer in San Francisco. “I like this movement because it helps to train left-right coordination between the upper and lower extremities, which can help improve cognitive function, too.',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
