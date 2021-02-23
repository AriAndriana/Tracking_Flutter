import 'package:flutter/material.dart';
import 'package:flutter_widget/page1.dart'; 
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Tabel extends StatelessWidget {
  final String apiUrl = 'https://api.kawalcorona.com/indonesia/provinsi';

  Future<List<dynamic>> _fetchDataUsers() async {
    var result = await http.get(apiUrl);
    return json.decode(result.body)['data'];
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: _fetchDataUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot){
            if(snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: ListView(
                      children: <Widget>[
                        DataTable(
                        columns: [
                          DataColumn(label: Text('RollNo')),
                          DataColumn(label: Text('Name')),
                          DataColumn(label: Text('Class')),
                          DataColumn(label: Text('Kasus'))
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text(snapshot.data[index]['Provinsi'])),
                            DataCell(Text(snapshot.data[index]['Kasus_Posi'])),
                            DataCell(Text(snapshot.data[index]['Kasus_Semb'])),
                            DataCell(Text(snapshot.data[index]['Kasus_Meni']))
                            ]
                          ),
                        ]),
                      ],
                    ),
                  );
                },
              );
            }
            else {
              return Center(
                child: Text('Failed!'),
              );
            }
          }
        )
      ),
    );
  }
}