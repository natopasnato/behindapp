import 'package:flutter/material.dart';
import 'routes.dart';
import 'theme.dart';

class BehindApp extends StatefulWidget {
  const BehindApp({super.key});

  @override
  State<BehindApp> createState() => _BehindAppState();
}

class _BehindAppState extends State<BehindApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Behind App - 遅刻罰金管理',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: Routes.login,
      onGenerateRoute: Routes.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
