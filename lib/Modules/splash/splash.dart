import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_app_new/core/page_routes_name.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, PageRoutesName.login);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/splash_background.png',
      fit: BoxFit.cover,
    );
  }
}
