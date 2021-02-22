import 'package:flutter/material.dart';
import 'package:flutter_widget/tabelglobal.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Image(image: AssetImage('assets/12.jpg')),
          Container(
            child: Row(
              children: <Widget> [
                Container(
                  width: 140,
                  height: 140,
                  padding: EdgeInsets.all(10),
                  child: Card(
                    color: Colors.red,
                    margin: EdgeInsets.all(10),
                    child: Container(
                      child: Center(
                        child: Text('Positif ... Jiwa'),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 140,
                  width: 140,
                  padding: EdgeInsets.all(10),
                  child: Card(
                    color: Colors.yellowAccent,
                    margin: EdgeInsets.all(10),
                    child: Container(
                      child: Center(
                        child: Text('Sembuh ... Jiwa'),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 140,
                  width: 140,
                  padding: EdgeInsets.all(10),
                  child: Card(
                    color: Colors.lightBlueAccent,
                    margin: EdgeInsets.all(10),
                    child: Container(
                      child: Center(
                        child: Text('Meninggal ... Jiwa'),
                      ),
                    ),
                  ),
                ), 
              ]
            ),
          ),
          Container(
            height: 150,
            padding: EdgeInsets.all(20),
            width: 200,
            child: FlatButton(
              child: Text('Data Global'),
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TabelGlobal()),
                );
              },
            ),
          ),
        ],
      )
    );
  }
}