import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/abs_creen.dart';
import 'package:gym_app_pratice/screens/back_screen.dart';
import 'package:gym_app_pratice/screens/biceps_screen.dart';
import 'package:gym_app_pratice/screens/chest_screen.dart';
import 'package:gym_app_pratice/screens/leg_screen.dart';
import 'package:gym_app_pratice/screens/shoulders_screen.dart';
import 'package:gym_app_pratice/screens/triceps_screen.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyDrawerState();
  }
}

class MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: new ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'GYM',
              style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            accountEmail: Text(
              'PROGRAMS',
              style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/body.jpg'),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/gym2.jpg'),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('assets/chest.png'),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Chest(),
                  ));
            },
            title: Text(
              'Chest',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('assets/shoulders.png'),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Shoulder();
              }));
            },
            title: Text(
              'Shoulder',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('assets/biceps.png'),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Biceps();
              }));
            },
            title: Text(
              'Biceps',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('assets/triceps.png'),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Triceps();
              }));
            },
            title: Text(
              'Triceps',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('assets/abs.png'),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Abs();
              }));
            },
            title: Text(
              'Abs',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('assets/back.png'),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Back();
              }));
            },
            title: Text(
              'Back',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('assets/legs.png'),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Leg();
              }));
            },
            title: Text(
              'Legs',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
