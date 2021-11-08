import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu_scroll.dart';

class CartaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white12,
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/img2.jpg'),
          ),
          Padding(padding: EdgeInsets.all(23)),
          Text(
            'Mi carta de presentación',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.all(27)),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                  'Hola! Soy Luciano Betti.Tengo 20 años los cumplí hace poco, el 24 de Octubre. Soy de Luján. Actualmente estudio Ingenieria Electromecánica.')),
        ],
      ),
    );
  }
}
