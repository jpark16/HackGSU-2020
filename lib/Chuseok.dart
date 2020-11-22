import 'package:flutter/material.dart';
import 'JiwooScreen.dart';
import 'const.dart';

class ChuseokPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<ChuseokPage> {
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
                          image: AssetImage('assets/img/Chuseok.png')))),
              // jiwoo
              Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => JiwooPage()));
                    },
                    child: Text('', style: TextStyle(fontSize: 15.0)),
                  )),
            ])));
  }
}
