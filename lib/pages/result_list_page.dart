import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marcadorestumorais/database/model/encItemModel.dart';
import 'package:marcadorestumorais/pages/result_page.dart';

class ResultListPage extends StatelessWidget {
  bool flag;
  List<EncItem> filteredList;

  ResultListPage({this.flag = false, this.filteredList});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return flag
        ? Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            body: Container(
              child: ListView.separated(
                  padding: const EdgeInsets.all(7),
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(height: 4.0),
                  itemCount: filteredList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      splashColor: Colors.cyan,
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultPage(
                                  description:
                                      filteredList[index].description))),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black12,
                        ),
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            //Image(image: AssetImage('assets/medicine.png')),
                            SizedBox(width: 10.0),
                            Flexible(
                              child: Text(
                                filteredList[index].title,
                                style: GoogleFonts.rubik(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          )
        : Container();
  }
}
