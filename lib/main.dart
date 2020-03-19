import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marcadorestumorais/pages/search_page.dart';

//Inicia o Código
void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.0),
          child: SearchPage(),
        ),
      ),
    );
  }
}
