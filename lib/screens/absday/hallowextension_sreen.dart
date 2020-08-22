import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';

class HallowExtension extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HallowExtensionState();
  }
}

class HallowExtensionState extends State<HallowExtension> {
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
                child: Image.asset('assets/abs3.gif'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "HALLOW EXTENSION-TO-CANNONBALL",
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
              "Get into a cannonball-type shape on your back, hugging your knees into your chest—yes, just like you’re at the pool at summer camp again. Simultaneously extend your legs and arms outwards into a “hollow” position, pressing your lower back to the floor. Hold for five seconds before curling up again, and complete five reps for one set.",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "“Engage as much as possible during the extension phase, and use the cannonball for recovery,” suggests Ashley Wilking, Nike master trainer and a trainer at Rumble Boxing. “Just don't completely let go. Think of it like you’re holding a crunch!”",
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
