import 'package:flutter/material.dart';
import 'Hijri.dart';
import 'const.dart';

class AyaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<AyaPage> {
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
                          image: AssetImage('assets/img/AAProfile.PNG')))),
              // hajri
              Positioned(
                  bottom: 290.0,
                  left: 235.0,
                  right: 15.0,
                  top: 360.0,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HijriPage()));
                    },
                    child: Text('', style: TextStyle(fontSize: 15.0)),
                  )),
            ])));
  }
}
