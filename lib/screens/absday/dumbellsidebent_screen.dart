import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';

class SideBent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SideBentState();
  }
}

class SideBentState extends State<SideBent> {
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
                child: Image.asset('assets/abs4.gif'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "DUMBELL SIDE BEND",
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
              "Stand with your feet hip-width apart and hold a dumbbell in your right hand, palm facing inwards towards the torso. Keep your back straight, activate your core, and then bend to the side as far as possible—but only at the waist. Hold for one second at the bottom of your range of motion, and return to start for one rep. Do between 12 and 20 reps for one set.",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Be smart when you pick the weight,” says Wealth. “It shouldn’t feel impossible. Using reasonable weights will help you focus on keeping your abs tight during the exercise for maximum results. And keep that tempo nice and slow.” The real six-pack is not the lift itself—it’s the burning sensation you feel along the way.",
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
