import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';

class FrontRaise extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FrontRaiseState();
  }
}

class FrontRaiseState extends State<FrontRaise> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SHOULDER'),
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
                child: Image.asset('assets/frontraise.jpg'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              " Front Raise",
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
              "You can use either a weight plate or barbell for this shoulder exercise, which targets the anterior delts. No matter what you decide to use, prepare for a seriously intense workout that brings no shortage of healthy pain. For that reason, don’t max out on the weight, as it will quickly turn healthy pain into unhealthy injury.",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "To execute, keep your hands at hip height as you hold the weight in front of you. Your feet should be even with your shoulders and your core should be tight. Next, retract your shoulder blades and keep your arms straight as you lift the weight to shoulder level. Breathe steadily and lower the weight carefully. Repeat.",
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
