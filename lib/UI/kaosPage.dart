import 'package:flutter/material.dart';
import 'package:kaos/Model/kaos.dart';
import 'package:kaos/Model/kaosPage.dart';
import 'package:kaos/Services/apiStatic.dart';
import 'package:kaos/UI/detailKaos.dart';
import 'package:kaos/UI/homePage.dart';

class kaosPage extends StatefulWidget {
  @override
  kaosPageState createState() => kaosPageState();
}

class kaosPageState extends State<kaosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("daftar Pakaian"),
      ),
      body: FutureBuilder<List<Kaos>>(
        future: ApiStatic.getKaos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            List<Kaos> listKaos = snapshot.data!;
            return Container(
              padding: EdgeInsets.all(5),
              child: ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) => Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext contect) =>
                                detailKaosPage(
                                  kaos: listKaos[index],
                                )));
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(top: 10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white,
                            border: Border.all(
                                width: 1, color: Colors.lightGreenAccent)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.network(
                              listKaos[index].foto,
                              width: 30,
                            ),
                            Column(
                              children: [
                                Text(listKaos[index].nama),
                                Text(
                                  listKaos[index].namaKelompok,
                                  style: TextStyle(fontSize: 8),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        backgroundColor: Colors.purpleAccent,
        onTap: (i) {
          switch (i) {
            case 0:
              Navigator.of(context).pushReplacement(new MaterialPageRoute(
                  builder: (BuildContext contect) => HomePage()));
              break;
            case 1:
              Navigator.of(context).pushReplacement(new MaterialPageRoute(
                  builder: (BuildContext contect) => kaosPage()));
              break;
            default:
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle),
              title: Text("Kaos")),
        ],
      ),
    );
  }
}