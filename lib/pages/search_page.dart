import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marcadorestumorais/pages/result_page.dart';

//Tela de Buscar Item
class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  Icon _appbarIcon = Icon(Icons.search);
  FocusNode _focusNode = FocusNode();

  void _iconPressed() {
    setState(() {
      if (_appbarIcon.icon == Icons.close) {
        _appbarIcon = Icon(Icons.search);
        WidgetsBinding.instance
            .addPostFrameCallback((_) => _searchController.clear());
        FocusScope.of(context).requestFocus(new FocusNode());
      }
    });
  }

  void _barTapped() {
    setState(() {
      if (_appbarIcon.icon == Icons.search && !_focusNode.hasFocus)
        _appbarIcon = Icon(Icons.close);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(7.0),
        width: MediaQuery.of(context).size.width,
        height: 48,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.brown, width: 1),
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
                    textInputAction: TextInputAction.search,
                    onSubmitted: (String value) async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultPage()));
                    },
                    controller: _searchController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                          color: Colors.brown,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          icon: _appbarIcon,
                          onPressed: () => _iconPressed()),
                      hintText: 'Digite aqui para fazer uma busca',
                      hintStyle: GoogleFonts.rubik(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
