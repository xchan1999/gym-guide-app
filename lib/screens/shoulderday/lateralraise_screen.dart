import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';

class LatRaise extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LatRaiseState();
  }
}

class LatRaiseState extends State<LatRaise> {
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
                child: Image.asset('assets/bentoverdumbellraise.jpg'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Bent-Over Dumbbell Lateral Raise",
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
              "This wildly effective shoulder exercise targets your middle deltoids, though it also builds upon your overall physique. You can perform it in either a standing (bent-over) or seated position. Start with a dumbbell in each hand, keeping your chest up, your back flat, your knees slightly bent, and your eyes focussed toward a fixed point on the floor. Now, bend over until your core is basically parallel with the ground, and hang the dumbbells directly underneath you, all while keeping your elbows in a slightly bent position. Next, raise both dumbbells up and out to your sides, forming an arc until your upper arms are even with your torso. Take a brief pause at the top before lowering the dumbbells back into starting position. Repeat.",
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
