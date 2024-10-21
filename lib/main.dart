import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HalNavigasi(),
    title: "Navigasi",
    routes: <String, WidgetBuilder>{
      '/HalNavigasi': (BuildContext context) => HalNavigasi(),
      '/Haldua': (BuildContext context) => Haldua(),
    },
  ));
}

class HalNavigasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MUSIC"),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.headset,
            size: 50.0,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/Haldua');
          },
        ),
      ),
    );
  }
}

class Haldua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SPEAKER"),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.speaker,
            size: 50.0,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/HalNavigasi');
          },
        ),
      ),
    );
  }
}
