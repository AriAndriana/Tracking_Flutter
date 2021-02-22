import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "List View",
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Scroll View'),
        ),
        body: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    HeaderWidget("Header 1"),
                    HeaderWidget("Header 2"),
                    HeaderWidget("Header 3"),
                    HeaderWidget("Header 4"),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    BodyWidget(Colors.blue),
                    BodyWidget(Colors.red),
                    BodyWidget(Colors.green),
                    BodyWidget(Colors.orange),
                    BodyWidget(Colors.blue),
                    BodyWidget(Colors.red),
                  ],
                ),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                delegate: SliverChildListDelegate(
                  [
                    BodyWidget(Colors.blue),
                    BodyWidget(Colors.green),
                    BodyWidget(Colors.yellow),
                    BodyWidget(Colors.orange),
                    BodyWidget(Colors.blue),
                    BodyWidget(Colors.red),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Card(
                      child: Text('Nama Lengkap:'),
                    ),
                    Card(
                      child: Text('Tempat, Tanggal Lahir:'),
                    ),
                    Card(
                      child: Text('Jenis Kelamin'),
                    ),
                    Card(
                      child: Text('Alamat'),
                    ),
                    SizedBox(
                      height: 100.0,
                      child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (BuildContext context, int index) => Card(
                          child: Center(child: Text('Data Dumy')),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  final String text;

  HeaderWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text(text),
      color: Colors.grey[200],
    );
  }
}

class BodyWidget extends StatelessWidget {
  final Color color;

  BodyWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: color,
      alignment: Alignment.center,
    );
  }
}