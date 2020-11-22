import 'package:flutter/material.dart';
import 'CalendarScreen.dart';
import 'TeamProfilesScreen.dart';
import 'const.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<WelcomePage> {
  Rect calendar = Offset(0.0, 500.0) & Size(200.0, 200.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: HexColor("000080"),
            ),
            body: Stack(children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/img/Welcome_Page.png')))),
              // calendar page
              Positioned(
                  bottom: 290.0,
                  left: 25.0,
                  right: 225.0,
                  top: 275.0,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CalendarPage()));
                    },
                    child: Text('', style: TextStyle(fontSize: 15.0)),
                  )),
              // team map
              Positioned(
                  bottom: 290.0,
                  left: 225.0,
                  right: 25.0,
                  top: 275.0,
                  child: TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => CalendarPage()));
                    },
                    child: Text('', style: TextStyle(fontSize: 15.0)),
                  )),
              // events
              Positioned(
                  bottom: 125.0,
                  left: 25.0,
                  right: 225.0,
                  top: 425.0,
                  child: TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => CalendarPage()));
                    },
                    child: Text('', style: TextStyle(fontSize: 15.0)),
                  )),
              // team profiles
              Positioned(
                  bottom: 125.0,
                  left: 225.0,
                  right: 25.0,
                  top: 425.0,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TeamProfilesPage()));
                    },
                    child: Text('', style: TextStyle(fontSize: 15.0)),
                  )),
            ])));
  }
}
