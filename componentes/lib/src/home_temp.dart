import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(children: <Widget>[
        ListTile(
          title: Text('opcion 01'),
        ),
        Divider(),
        ListTile(
          title: Text('opcion 02'),
        ),
        Divider(),
        ListTile(
          title: Text('opcion 03'),
        ),
        Divider(),
      ]),
    );
  }
}
