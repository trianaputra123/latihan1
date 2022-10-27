import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kaos/Model/kaos.dart';

class detailKaosPage extends StatefulWidget {
  detailKaosPage({required this.kaos});
  final Kaos kaos;

  @override
  detailKaosPageState createState() => detailKaosPageState();
}

class detailKaosPageState extends State<detailKaosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.kaos.nama),
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: [
            Image.network(widget.kaos.foto),
            Container(
              padding: EdgeInsets.all(5),
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
                ),
              ),
              child: Text(
                widget.kaos.nik,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.lightBlue,
              width: double.infinity,
              height: double.maxFinite,
              child: new Text(widget.kaos.alamat),
            ),
          ],
        ),
      ),
    );
  }
}