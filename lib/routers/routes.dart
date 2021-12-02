import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:session4/screens/forgot_password.dart';
import 'package:session4/screens/login.dart';
import 'package:session4/screens/register.dart';
import 'package:session4/screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.path: (context) => const SplashScreen(),
  Login.path: (context) => const Login(),
  Register.path: (context) => const Register(),
  ForgotPassword.path: (context) => const ForgotPassword(),
};
