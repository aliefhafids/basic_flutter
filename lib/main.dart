import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key ? key
  }): super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State < HomePage > {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MyApp"),
      ),
      body: ListView(
        children: < Widget > [
          Container(
            margin: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'BERITA TERBARU',
                    style: TextStyle(fontSize: 14),
                  )),

                Container(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'PERTANDINGAN HARI INI',
                    style: TextStyle(fontSize: 14),
                  )),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Column(children: [
              Image(
                image: NetworkImage(
                  'https://asset.kompas.com/crops/UN9eSaRLBzb7L0pniTeBVZqO2XQ=/275x0:1002x485/750x500/data/photo/2021/09/29/6153afcf1ee25.jpg'),
                fit: BoxFit.fitWidth,
                width: 500.0,
                height: 300.0,
              ),

              new Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
              ),

              Text('Lawan Mobat Mabit menghadapi Trio MMN!!',
                style:
                TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold)
              ),

              new Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
              ),
            ]),
          ),
          Container(
            color: Colors.deepPurple,
            alignment: Alignment.centerLeft,
            child: Text("Transfer", style: TextStyle(
              fontSize: 14.0, color:
              Colors.white)),
            height: 50.0,
            width: 100.0,
            padding: EdgeInsets.only(left: 5.0),
          ),

          new Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
          ),


          Container(
            decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  'https://static.republika.co.id/uploads/images/inpicture_slide/reaksi-cristiano-ronaldo-dari-manchester-united-selama-pertandingan-sepak_211228074658-719.jpg',
                  width: 180,
                  height: 100,
                ),
                Expanded(
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child:
                      Text("CR7 resmi pindah ke Arema, menggantikan Dedik Drogba"),
                    ),
                  ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            width: 300,
            height: 50,
            padding: EdgeInsets.all(3.0),
            child: Row(
              children: [Text('Manchester, 07 January 2022')],
            ),
          ),

          new Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
          ),

          //------------------------ list 2 --------------------------
          Container(
            decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  'https://asset.kompas.com/crops/UN9eSaRLBzb7L0pniTeBVZqO2XQ=/275x0:1002x485/750x500/data/photo/2021/09/29/6153afcf1ee25.jpg',
                  width: 180,
                  height: 100,
                ),
                Expanded(
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child:
                      Text("Harapan Arema bisa mengkontrak Messi di musim mendatang"),
                    ),
                  ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            width: 300,
            height: 50,
            padding: EdgeInsets.all(3.0),
            child: Row(
              children: [Text('Malang, 21 January 2022')],
            ),
          ),
        ],
      ));
  }
}