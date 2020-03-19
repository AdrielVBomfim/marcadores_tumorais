import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(70.0),
              child: Image(image: AssetImage('assets/medicine.png')),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sollicitudin condimentum ullamcorper. Etiam eget eleifend sem, ut ultricies mi. Morbi sit amet tellus scelerisque, laoreet purus nec, rhoncus orci. Vestibulum.',
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
        ),
      ),
    );
  }
}
