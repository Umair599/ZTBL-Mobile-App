import 'package:flutter/material.dart';
import 'package:ZTBLMobile/services/authentication.dart';
import 'package:ZTBLMobile/pages/root_page.dart';
void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'ZTBL Mobile',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new RootPage(auth: new Auth()));
  }
}
