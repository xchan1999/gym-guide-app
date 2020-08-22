import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';

class LegPress extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LegPressState();
  }
}

class LegPressState extends State<LegPress> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('LEG'),
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
                child: Image.asset('assets/leg2.jpg'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "LEG PRESS",
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
              "1.) Set the weight then sit on the machine placing your feet (shoulder width) on the footplate in front of you. Make sure to press your back firmly against the backrest.",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "2.) To start, lower the footplate’s safety bar and press all the way up so that your legs are fully extended creating a 90-degree with your torso and legs. Remember to keep the knees bent slightly when extended to avoid injuries or accidents.",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "3.) Slowly lower the footplate as you inhale to make a 90-degree angle with your upper and lower legs. Place the weight on your heels and push the plate back to your starting position. Finish your reps, and don’t forget to lock the safety pins after.",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "4.) Put your feet up higher on the footplate to work your hams and glutes. Make sure your hands are always on the safety bars for your own protection.",
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
