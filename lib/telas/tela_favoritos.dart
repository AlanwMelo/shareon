import 'package:aplicativo_shareon/layout_listas/lista_favoritos_builder.dart';
import 'package:aplicativo_shareon/utils/drawer_builder.dart';
import 'package:aplicativo_shareon/utils/shareon_appbar.dart';
import 'package:aplicativo_shareon/utils/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaFavoritos extends StatefulWidget {
  @override
  _TelaFavoritosState createState() => _TelaFavoritosState();
}

class _TelaFavoritosState extends State<TelaFavoritos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _home(),
    );
  }
}

_home() {
  return Scaffold(
    appBar: shareon_appbar(),
    drawer: DrawerList(),
    body: Container(
      child: Column(
        children: <Widget>[
          textTitulo("Favoritos"),
          Expanded(
            child: lista_favoritos_builder(),
          )
          ,
        ],
      ),
    ),
  );
}

