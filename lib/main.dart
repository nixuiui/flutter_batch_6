import 'package:flutter/material.dart';
import 'package:flutter_batch_6/day-4/theme/theme.dart';
import 'package:flutter_batch_6/day-5/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      routes: routes,
      initialRoute: AppRoutes.home,
    );
  }
}