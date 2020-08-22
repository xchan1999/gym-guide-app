import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';

class BirdDog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BirdDogState();
  }
}

class BirdDogState extends State<BirdDog> {
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
                child: Image.asset('assets/abs6.gif'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "BIRD DOG",
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
              "Think of this as an upside-down dead bug. Start in a tabletop position, with your shoulders over wrists and hips over knees. Engage your core while simultaneously lifting your right arm and left leg. Your foot should be flexed as you kick back, and your palm should face in towards your body. Pause for one second when your arm and leg are at the same height as your torso, and then bring your elbow and knee to touch underneath the body. Repeat on the other side for one rep, and do five reps for one set.",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "“Be careful not to hyperextend your elbows! Maintaining a slight bend fires up those triceps,” says Wilking. “Keep the neck long by looking down and a few inches in front of you, and use the exhale portion of each breath to create tension.”",
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
