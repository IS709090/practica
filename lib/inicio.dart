import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'dart:convert';
import 'dart:ui';
import 'principal.dart';

class inicio extends StatefulWidget {
  inicio({Key? key}) : super(key: key);

  @override
  _inicioState createState() => _inicioState();
}


class _inicioState extends State<inicio> {
  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BackdropScaffold(
          appBar: BackdropAppBar(
            backgroundColor: Colors.deepPurple,
            title: const Text("La frase diaria"),
            actions: const <Widget>[
              BackdropToggleButton(
                icon: AnimatedIcons.list_view,
              )
            ],
          ),
          backLayer:          
          backLayerBackgroundColor: Colors.deepPurple, 
          BackdropNavigationBackLayer(
            items: [
              ListTile(
                  leading: Image.network("https://flagcdn.com/32x24/ad.png"),
                  title: const Text(
                    "Andorra",
                  )),
              ListTile(
                  leading: Image.network("https://flagcdn.com/32x24/mx.png"),
                  title: const Text(
                    "Mexico"
                  )),
              ListTile(
                  leading: Image.network("https://flagcdn.com/32x24/pe.png"),
                  title: const Text(
                    "Peru"
                  )),
              ListTile(
                  leading: Image.network("https://flagcdn.com/32x24/ca.png"),
                  title: const Text(
                    "Canada"
                  )),
              ListTile(
                  leading: Image.network("https://flagcdn.com/32x24/ar.png"),
                  title: const Text(
                    "Argentina"
                  )),
            ],
            onTap: (int x) => {setState(() => indice = x)},
          ),
          frontLayer: principal()),
    );
  }
}