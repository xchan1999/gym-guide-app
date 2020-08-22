import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';

class KickBack extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return KickBackState();
  }
}

class KickBackState extends State<KickBack> {
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
                child: Image.asset('assets/triceps3.jpg'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "TRICEPS KICK-BACK",
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
              'Position yourself on the left side of the bench with your right knee and right hand resting on it,” says Adepitan. “Using a neutral grip, pick up the dumbbell with your left hand. Keep your back straight and look forward. Tuck your left upper arm close to your torso and bend at the elbow, forming a 90° angle with your upper arm and forearm.',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Moving only below the elbow, raise the dumbbell behind you until your arm is fully extended. Pause, and then lower the dumbbell back to the starting position. Repeat this movement for the desired number of reps and then switch to your right arm.',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
