import 'package:courses_app/features/onborading/view.dart';
import 'package:flutter/material.dart';
import 'const/resources/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  
    return  MaterialApp(
      theme: getApplicationTheme(),
      home: OnBoradingView(),
    );
  }
}
