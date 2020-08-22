import 'package:flutter/material.dart';
import 'package:gym_app_pratice/screens/chestday/chestpress_screen.dart';
import 'package:gym_app_pratice/screens/chestday/dips_screen.dart';
import 'package:gym_app_pratice/screens/chestday/incdumbellflies_screen.dart';
import 'package:gym_app_pratice/screens/chestday/pecdeck_screen.dart';
import 'package:gym_app_pratice/screens/drawer_screen.dart';
import 'package:gym_app_pratice/screens/chestday/barbelbp_screen.dart';
import 'package:gym_app_pratice/screens/home_screen.dart';
import 'package:gym_app_pratice/screens/chestday/bentover_screen.dart';

class Chest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChestState();
  }
}

class ChestState extends State<Chest> {
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
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            Text(
              'CHEST',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            Divider(
              thickness: 1.0,
              color: Colors.black,
            ),
            Text(
              "I got 99 problems but a BENCH ain't one",
              textAlign: TextAlign.center,
            ),
            Divider(
              thickness: 1.0,
              color: Colors.black,
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return BarbelBench();
                            }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/barbelbenchpress.JPG',
                                fit: BoxFit.fill,
                                height: 200.0,
                              ))),
                    ), //Expanded
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return PecDeck();
                            }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/pecdeck.JPG',
                                fit: BoxFit.fill,
                                height: 200.0,
                              ))),
                    ), //Expanded
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return BentOver();
                            }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/bentforward.JPG',
                                fit: BoxFit.fill,
                                height: 200.0,
                              ))),
                    ), //Expanded
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ChestPress();
                            }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/chestpress.JPG',
                                fit: BoxFit.fill,
                                height: 200.0,
                              ))),
                    ), //Expanded
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DumbFlies();
                            }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/inclineddumbellflies.JPG',
                                fit: BoxFit.fill,
                                height: 200.0,
                              ))),
                    ), //Expanded
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Dips();
                            }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(6.0),
                              child: Image.asset(
                                'assets/dips.JPG',
                                fit: BoxFit.fill,
                                height: 200.0,
                              ))),
                    ), //Expanded
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
