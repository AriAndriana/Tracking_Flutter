import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widget/tabelglobal.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: new LinearGradient(
          begin: FractionalOffset.bottomLeft,
          end: FractionalOffset.topRight,
          colors: [
            const Color(0xFF001510),
            const Color(0x0000bf8f),
          ]
        )
      ),
      child: ListView(
        children: <Widget>[
          Image(image: AssetImage('assets/12.jpg')),
          Container(
            child: Row(
              children: <Widget> [
                Container(
                  width: 115,
                  height: 115,
                  // color: Colors.blue,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(12),
                  child: Center(
                    child: Text(
                      'Jumlah Positif ... Jiwa',
                      style: TextStyle(color: Colors.white,),
                      ),
                  ),
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                      begin: FractionalOffset.bottomLeft,
                      end: FractionalOffset.topRight,
                      colors: [
                        const Color(0xff303f9f),
                        const Color(0xffff1744),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 10,	
                          offset: Offset(0, 3), 
                      )
                    ],
                  ),
                ),
                Container(
                  width: 115,
                  height: 115,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(12),
                  child: Center(
                    child: Text('Jumlah Positif ... Jiwa'),
                  ),
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                      begin: FractionalOffset.bottomLeft,
                      end: FractionalOffset.topRight,
                      colors: [
                        const Color(0xfffffde7),
                        const Color(0xfff9a825),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 10,	
                          offset: Offset(0, 3), 
                      )
                    ],
                  ),
                ),
                Container(
                  width: 115,
                  height: 115,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(12),
                  child: Center(
                    child: Text('Jumlah Positif ... Jiwa'),
                  ),
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                      begin: FractionalOffset.bottomLeft,
                      end: FractionalOffset.topRight,
                      colors: [
                        const Color(0xfffffde7),
                        const Color(0xfff9a825),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 10,	
                          offset: Offset(0, 3), 
                      )
                    ],
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
              child: Text('Ddata Global'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
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
