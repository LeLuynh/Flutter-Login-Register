import 'package:flutter/material.dart';
import 'package:session4/contants.dart';
import 'package:session4/routers/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: kBackground,
      ),
      //  home: const Login(),
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}
