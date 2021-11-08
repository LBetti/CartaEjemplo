import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/menu_scroll.dart';

void main() {
  runApp(Principal());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
}

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScrollPage(),
    );
  }
}
