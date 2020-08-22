import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';

class HardPlank extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HardPlankState();
  }
}

class HardPlankState extends State<HardPlank> {
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
                child: Image.asset('assets/abs1.gif'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "HARD STYLE PLANK",
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
              " Lying face down on the ground, prop yourself up into a forearm plank position. Make sure your elbows are aligned underneath your shoulders, and that your hands are balled up in fists. Your forearms should be parallel to one another. Hold for 10 to 20 seconds per set.",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'You know planks, right? It’s easy to go through the motions here. Don’t do it. “The key is to squeeze your entire body—quads, glutes, core, back, and fists—as tight as possible while taking diaphoretic breathes throughout the hold,” says Wealth. No matter how many times you’ve done it, this exercise is as difficult as you’re willing to make it.',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
