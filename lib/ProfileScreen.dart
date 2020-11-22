import 'package:flutter/material.dart';
import 'const.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<ProfilePage> {
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
                          image: AssetImage('assets/img/ProfilePic.PNG')))),
            ])));
  }
}
