import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';

class TricepsPressDown extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TricepsPressDownState();
  }
}

class TricepsPressDownState extends State<TricepsPressDown> {
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
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Image.asset('assets/triceps1.jpg'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "TRICEPS PRESS DOWN",
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
              'Attach a straight or angled bar to a high pulley,” says Adepitan, “and hold it with your palms facing down (overhand grip) and your hands shoulder-width apart. Standing upright with your torso straight, bring your upper arms close to your body and perpendicular to the floor. Your forearms should be pointing up towards the pulley.',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Using your triceps to move your forearms, bring the bar down until it touches the front of your thighs with your arms fully extended and perpendicular to the floor. Your upper arms should remain stationary next to your torso. After holding for one second at the contracted position, bring the bar slowly back up to the starting point. Exhale as you bring the bar down and breathe in as you return to the start position.',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
