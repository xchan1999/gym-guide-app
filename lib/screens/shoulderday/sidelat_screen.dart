import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';

class SideLatRaise extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SideLatRaiseState();
  }
}

class SideLatRaiseState extends State<SideLatRaise> {
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
                child: Image.asset('assets/dumbelllateralraise.jpg'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Dumbbell Lateral Raise",
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
              "If you prefer a more traditional lateral raise, look no further than this one here. It likewise targets the middle deltoids and works wonders when executed properly. Start in the standing position, keeping your feet shoulder-width apart, your abs tight, your chest up, your head straight, and your shoulders pinched. Hold the dumbbells at either side, retaining a neutral grip.",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Now, here comes the hard part. Using just your shoulders and arms, raise the dumbbells a notch above shoulder level, and hold for a few seconds. Lower the dumbbells back to the starting position, and repeat. Your elbows and hands should be moving together in harmony the entire time, and you should be maintaining a neutral, balanced position. If you find that your core or neck is shifting as you perform each rep (i.e. you’re utilising your body’s momentum), lower the weight accordingly.",
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
