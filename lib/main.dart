import 'package:flutter/material.dart';

//Inicia o Código
void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ),);
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

//Tela splash
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return AfterSplash();
  }
}

//Tela de Buscar Item
class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text('Marcadores Tumorais',
                style: TextStyle(color: Colors.white))),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 48,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.blueAccent, width: 4),
                  borderRadius: BorderRadius.circular(12)),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Insira o tipo de cancer ou marcador tumoral",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: new Center(
        child: new Text(
          " ",
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
    );
  }
}
