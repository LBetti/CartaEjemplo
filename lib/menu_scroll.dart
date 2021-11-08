import 'package:flutter/material.dart';
import 'package:flutter_application_1/carta_page.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical, //se puede hacer horizontal también
      children: [
        pagina1(),
        pagina2(context),
      ],
    ));
  }

  Widget pagina1() {
    return Stack(
      children: [
        imagenFondo(),
        textos(),
      ],
    );
  }

  Widget imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/img1.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget textos() {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Text(
            'Carta de presentación',
            style:
                TextStyle(color: Colors.white.withOpacity(1.0), fontSize: 30),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
          ),
          Text(
            'Luciano Betti',
            style:
                TextStyle(color: Colors.white.withOpacity(1.0), fontSize: 18),
          ),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white),
        ],
      ),
    );
  }

  Widget pagina2(context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(0, 0, 0, 1),
      child: Center(
        child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.lightBlue)))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              child: Text(
                'Hola!',
                style: TextStyle(
                    color: Colors.white.withOpacity(1.0), fontSize: 20.0),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartaPage()),
              );
            }),
      ),
    );
  }
}
