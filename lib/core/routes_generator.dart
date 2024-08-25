import 'package:flutter/material.dart';
import 'package:todo_app_new/Modules/layout/layout.dart';
import 'package:todo_app_new/Modules/login/login.dart';
import 'package:todo_app_new/Modules/signup/signUp.dart';
import 'package:todo_app_new/Modules/splash/splash.dart';
import 'package:todo_app_new/core/page_routes_name.dart';

class RoutesGenerator {
  static Route<dynamic> onGeneratorRoutes(RouteSettings settinges) {
    switch (settinges.name) {
      case PageRoutesName.initial:
        return MaterialPageRoute(
            builder: (context) => Splash(), settings: settinges);
      case PageRoutesName.login:
        return MaterialPageRoute(
            builder: (context) => Login(), settings: settinges);
      case PageRoutesName.signUp:
        return MaterialPageRoute(
            builder: (context) => Signup(), settings: settinges);
      case PageRoutesName.layout:
        return MaterialPageRoute(
            builder: (context) => Layout(), settings: settinges);
      default:
        return MaterialPageRoute(
            builder: (context) => Splash(), settings: settinges);
    }
  }
}
