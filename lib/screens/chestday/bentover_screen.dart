import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';

class BentOver extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BentOverState();
  }
}

class BentOverState extends State<BentOver> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CHEST'),
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
                child: Image.asset('assets/bentforward.JPG'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Bent forward cable crossover",
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
              'Equipment needed: high pulley machine',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              '1.) Begin this exercise either with your feet planted hip-width apart, or with one in front of the other as if you are walking.',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              '2.) Grasp the pulley handles with your arms straight out and facing inward, making sure that your hands are below your shoulders and your elbows are bent a bit.',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              '3.) Make your movements slow and controlled — no jerking — as you bring your hands together and extend your arms. For a wider arc and more resistance, move your arms down first and then in toward each other to cross one hand over the other.',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              '4.) Bring your arms slowly back to the starting position with control. Don’t let your arms go back past the shoulders.',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
