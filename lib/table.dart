import 'package:flutter/material.dart';
import 'package:flutter_widget/page1.dart'; 

class Tabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:<Widget>[
          DataTable(
          columns: [
            DataColumn(label: Text('Negara')),
            DataColumn(label: Text('Positif')),
            DataColumn(label: Text('Sembuh')),
            DataColumn(label: Text('Meninggal'))
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('Arya')),
              DataCell(Text('6')),
              DataCell(Text('Arya')),
              DataCell(Text('6')),
            ]),
            DataRow(cells: [
              DataCell(Text('John')),
              DataCell(Text('9')),
              DataCell(Text('Arya')),
              DataCell(Text('6')),
            ]),
            DataRow(cells: [
              DataCell(Text('Tony')),
              DataCell(Text('8')),
              DataCell(Text('Arya')),
              DataCell(Text('6')),
            ]),
          ],
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: FlatButton(
          child: Text('Kembali'),
          padding: EdgeInsets.all(10),
          color: Colors.blueAccent,
          onPressed: () {
            Navigator.pop(context);
            MaterialPageRoute(builder: (context) => Page1());
          },
        ),
        ),
        ],
      ),
    );
  }
}