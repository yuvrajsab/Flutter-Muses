import 'package:flutter/material.dart';

import 'screens/home_page.dart';
import 'Database.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Muses",
      home: new HomePage(),
      theme: new ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.blueAccent,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
