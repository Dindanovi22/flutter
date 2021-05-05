import 'package:flutter/material.dart';
void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter penyimpanan data',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Data Penduduk'),
        ),
        body: Penduduk(),
      ),
    );
  }
}

class DataPenduduk{
  String nama;
  String tempatlahir;
  String pekerjaan;
  String umur;
  String agama;


  DataPenduduk({this.nama, this.tempatlahir, this.pekerjaan, this.umur, this.agama});

}

// class Penduduk
class Penduduk extends StatefulWidget {
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Penduduk> {
  //deklarasi variabel
  final txtnama = TextEditingController();
  final txttempatlahir = TextEditingController();
  final txtpekerjaan = TextEditingController();
  final txtumur = TextEditingController();
  final txtagama = TextEditingController();


  List<Widget> data = [];

  onTambah() {
    setState(() {
       data.add(ListTile(leading: Text(txtnama.text)));
       data.add(ListTile(leading: Text(txttempatlahir.text)));
       data.add(ListTile(leading: Text(txtpekerjaan.text)));
       data.add(ListTile(leading: Text(txtumur.text)));
       data.add(ListTile(leading: Text(txtagama.text)));
      txtnama.clear();
      txttempatlahir.clear();
      txtpekerjaan.clear();
      txtumur.clear();
      txtagama.clear();
    });
  }

  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
               TextField(
                controller: txtnama,
                decoration: InputDecoration(hintText: 'nama'),
              ),
              TextField(
                controller: txttempatlahir,                decoration: InputDecoration(hintText: 'tempat lahir'),
              ),
              TextField(
                controller: txtpekerjaan,
                decoration: InputDecoration(hintText: 'pekerjaan'),
              ),
              TextField(
                controller: txtumur,
                decoration: InputDecoration(hintText: 'umur'),
              ),
              TextField(
                controller: txtagama,
                decoration: InputDecoration(hintText: 'agama')),
              Divider(height: 5.0),
              ElevatedButton(child: Text("Tambah"), onPressed: onTambah),
            ],
          ),
        ),
        new Column(
          children: data,
        )
      ],
    );
  }
}
