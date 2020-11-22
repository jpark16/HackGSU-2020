import 'package:flutter/material.dart';
import 'AyaScreen.dart';
import 'JiwooScreen.dart';
import 'NoahScreen.dart';
import 'const.dart';

class TeamProfilesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<TeamProfilesPage> {
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
                          image: AssetImage('assets/img/TeamProfiles.PNG')))),
              // aya
              Positioned(
                  bottom: 290.0,
                  left: 225.0,
                  right: 25.0,
                  top: 275.0,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AyaPage()));
                    },
                    child: Text('', style: TextStyle(fontSize: 15.0)),
                  )),
              // jiwoo
              Positioned(
                  bottom: 290.0,
                  left: 25.0,
                  right: 225.0,
                  top: 275.0,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => JiwooPage()));
                    },
                    child: Text('', style: TextStyle(fontSize: 15.0)),
                  )),
              // noah
              Positioned(
                  bottom: 100.0,
                  left: 125.0,
                  right: 125.0,
                  top: 450.0,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NoahPage()));
                    },
                    child: Text('', style: TextStyle(fontSize: 15.0)),
                  )),
            ])));
  }
}
