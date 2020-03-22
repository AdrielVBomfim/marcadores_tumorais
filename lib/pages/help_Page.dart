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
                        'O que são Marcadores Tumorais?',
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
                        'Os marcadores tumorais são proteínas ou outras substâncias produzidas tanto por células normais quanto por células cancerígenas, mas em quantidades maiores pelas células cancerígenas. Eles podem ser encontrados no sangue, urina, fezes, tumores ou em outros tecidos ou fluídos corporais de alguns pacientes com câncer. No entanto, cada vez mais, marcadores genômicos, como mutações genéticas tumorais, padrões de expressão gênica tumoral e alterações não genéticas no DNA tumoral, estão sendo usados como marcadores tumorais.\n Existem vários marcadores tumorais em uso clínico. Alguns estão associados a apenas um tipo de câncer, enquanto outros estão relacionados a vários tipos de câncer. Não existe um marcador tumoral  "universal" que possa revelar a presença de qualquer tipo de neoplasia.',
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