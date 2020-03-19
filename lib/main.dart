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
class AfterSplash extends StatefulWidget {
  @override
  _AfterSplashState createState() => _AfterSplashState();
}

class _AfterSplashState extends State<AfterSplash> {
  final TextEditingController _searchController = TextEditingController();
  Icon _appbarIcon = Icon(Icons.search);
  FocusNode _focusNode = FocusNode();

  void _iconPressed() {
    setState((){
      if(_appbarIcon.icon == Icons.close) {
        _appbarIcon = Icon(Icons.search);
        WidgetsBinding.instance.addPostFrameCallback((_) => _searchController.clear());
        FocusScope.of(context).requestFocus(new FocusNode());
      }
    });
  }

  void _barTapped(){
    setState(() {
      if (_appbarIcon.icon == Icons.search && !_focusNode.hasFocus)
        _appbarIcon = Icon(Icons.close);
    });
  }

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
                margin: EdgeInsets.only(left: 10.0, bottom: 2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        focusNode: _focusNode,
                        onTap: () => _barTapped(),
                        controller: _searchController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                icon: _appbarIcon,
                                onPressed: () => _iconPressed()
                            ),
                            hintText: 'Insira o tipo de cancer ou marcador tumoral'
                        ),
                      ),
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
