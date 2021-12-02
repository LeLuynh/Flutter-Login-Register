import 'package:flutter/material.dart';
import 'package:session4/components/splash_main.dart';

class SplashScreen extends StatelessWidget {
  static String path = '/';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body1(),
    );
  }
}
