import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';

class SeatedPress extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SeatedPressState();
  }
}

class SeatedPressState extends State<SeatedPress> {
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
                child: Image.asset('assets/seateddumbellshoulderpress.jpg'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Seated Dumbbell Shoulder Press",
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
              "A proper deltoid workout simply isn’t complete without the seated dumbbell shoulder press. In fact, some say this exercise routine is an entire deltoid regimen unto itself, targeting the anterior, lateral, and posterior deltoid muscles (with an emphasis on the middle delts). Meanwhile, lifting two separate dumbbells (as opposed to using a machine) prevents you from using one side of your body over the other, thereby retaining firmer balance and distribution. Naturally, a fair amount of coordination is required to pull this one off, especially when you increase the weights.",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "To perform a seated dumbbell shoulder press, sit on a low-back bench and hold a dumbbell in each hand at the shoulder level, palms facing forward. Keeping your head and spine perfectly straight, lift the dumbbells overhead toward one another, stopping just short of having them touch at the top. Hold the position for a few seconds and then carefully reverse course. Repeat.",
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
