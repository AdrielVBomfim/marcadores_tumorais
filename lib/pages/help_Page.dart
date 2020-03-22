import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
          child: Center(
            child: Container(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        'Marcadores Tumorais',
                        style:  GoogleFonts.rubik(
                            textStyle: TextStyle(fontSize: 20)
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        'Descrição',
                        style: GoogleFonts.rubik(),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(height: 50.0),
                    FlatButton(
                      color: Colors.cyan,
                      textColor: Colors.black87,
                      onPressed: () async => Navigator.pop(context),
                      child: Text('VOLTAR'),
                    )
                  ],
                )),
          )),
    );
  }
}