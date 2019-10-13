

import 'package:aplicativo_shareon/utils/shareon_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeuPerfil extends StatefulWidget {
  @override
  _MeuPerfilState createState() => _MeuPerfilState();
}

class _MeuPerfilState extends State<MeuPerfil> {
  @override
  Widget build(BuildContext context) {
    return _meu_perfil();
  }

  Widget _meu_perfil() {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: shareon_appbar(),
      body: SizedBox.expand(
        child: Container(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              _iconEditar(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container (
                    height: 200,
                    child: _img(),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: _text("Jessica Alice martins", Titulo: true),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    width: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        _text("5.0"),
                        _iconEstrela(),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16,
                    bottom: 16),
                    child: _text("Avaliações:"),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 40,
                      minWidth: 1000,
                    ),
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          color: Colors.white,
                          child: _text("Você ainda não possui avaliações.", Resumo: true),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

_img() {
  return ClipRRect(
    borderRadius: BorderRadius.all(
      Radius.circular(180),
    ),
    child: Container(
      child: Image.network(
        "https://avatars2.githubusercontent.com/u/49197693?s=400&v=4",
        fit: BoxFit.cover,
      ),
    ),
  );
}

_text(String texto, {bool Titulo = false, bool Resumo = false}) {
  if (Titulo == true) {
    return Text(
      "$texto",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 30,
      ),
    );
  } else if (Resumo == true) {
    return Text(
      "$texto",
      style: TextStyle(
        fontSize: 16,
      ),
    );
  } else {
    return Text(
      "$texto",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }
}

_iconEstrela() {
  return Icon(
    Icons.star,
    color: Colors.white,
    size: 20.0,
  );
}

_iconEditar() {
  return Icon(
    Icons.edit,
    color: Colors.white,
    size: 25.0,
  );
}