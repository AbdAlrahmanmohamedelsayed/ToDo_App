import 'package:flutter/material.dart';
import 'package:todo_app_new/core/Applecation_Theme_Manager.dart';
import 'package:todo_app_new/core/page_routes_name.dart';
import 'package:todo_app_new/core/routes_generator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplecationThemeManager.lightThemeManager,
      initialRoute: PageRoutesName.initial,
      onGenerateRoute: RoutesGenerator.onGeneratorRoutes,
    );
  }
}
