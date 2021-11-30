import 'package:flutter/material.dart';
// import 'package:udaapp_admin/endrawer_list/coba.dart';

import 'package:udaapp_admin/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Poppins'),
      home: Home(),
    );
  }
}
