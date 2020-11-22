import 'package:flutter/material.dart';
import 'Chuseok.dart';
import 'Hijri.dart';
import 'const.dart';

class EventPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<EventPage> {
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
                          image: AssetImage('assets/img/Events.png')))),
              // chuseok
              Positioned(
                  bottom: 450.0,
                  left: 225.0,
                  right: 25.0,
                  top: 200.0,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChuseokPage()));
                    },
                    child: Text('', style: TextStyle(fontSize: 15.0)),
                  )),
              // hijri
              Positioned(
                  bottom: 135.0,
                  left: 15.0,
                  right: 235.0,
                  top: 515.0,
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
