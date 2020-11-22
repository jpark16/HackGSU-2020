import 'package:flutter/material.dart';
import 'const.dart';
import 'AyaScreen.dart';

class HijriPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<HijriPage> {
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
                          image: AssetImage('assets/img/Hijri.png')))),
              // aya
              Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AyaPage()));
                    },
                    child: Text('', style: TextStyle(fontSize: 15.0)),
                  )),
            ])));
  }
}
