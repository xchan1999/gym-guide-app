import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';

class DumbellCurl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DumbellCurlState();
  }
}

class DumbellCurlState extends State<DumbellCurl> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BICEPS'),
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
                child: Image.asset('assets/biceps1.jpg'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "DUMBELL CURL",
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
              'Lie on an incline bench with a weight in each hand with palms facing forward. Curl the weights up, pause at the top, then lower back down under complete control.',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
