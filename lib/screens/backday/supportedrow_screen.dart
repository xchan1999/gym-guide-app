import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';

class SupportedRow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SupportedRowState();
  }
}

class SupportedRowState extends State<SupportedRow> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BACK'),
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
                child: Image.asset('assets/back4.gif'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "CHEST-SUPPORTED DUMBELL ROW",
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
              "An ideal move for those struggling to keep the chest strong and spine straight during other back-building bent-over moves, the chest-supported dumbbell row isolates your back muscles — helping move the dumbbells considerably more efficiently and safely.",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Lie face down on the bench with your feet other side to keep you stable. Hang the dumbbells beneath you using a neutral grip. Keep your head up and bring your shoulder blades together as you row the weights towards your chest. Lower to the starting position under control.",
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
