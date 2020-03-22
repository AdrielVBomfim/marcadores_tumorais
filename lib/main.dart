import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marcadorestumorais/pages/result_list_page.dart';
import 'package:marcadorestumorais/pages/search_page.dart';
import 'util/dataParser.dart';
import 'database/dao/encItemDAO.dart';

//Inicia o Código
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await loadData();   //carrega para o banco de dados os dados armazenados em data.json
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
    return SearchPage();
  }
}
