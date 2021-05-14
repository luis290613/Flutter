import 'package:componentes/src/Utils/icono_string_util.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Componentes'),
        ),
        body: _lista(),
      ),
    );
  }

  Widget _lista() {
    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          print('builder');
          print(snapshot.data);
          return ListView(
            children: _ListaItems(snapshot.data, context),
          );
        });
  }

  List<Widget> _ListaItems(List<dynamic> data, BuildContext contextt) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final widgetTem = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(contextt, opt['ruta']);
          //Esta es una forma rapida de redireccionar a una pantalla
          // final route = MaterialPageRoute(builder: (context) {
          //   return AlertPage();
          // });
          // Navigator.push(contextt, route);
        },
      );
      opciones..add(widgetTem)..add(Divider());
    });
    return opciones;
  }
}
