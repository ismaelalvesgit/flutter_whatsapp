import 'package:flutter/material.dart';
import 'package:whatsapp/pages/home_page.dart';

void main () => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "whatsapp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366)
      ),
      home: HomePage(),
    );
  }
}
