import 'package:flutter/material.dart';
import 'package:master_battery_warranty_app/presentation/ui/screens/splash_screen.dart';
import 'package:master_battery_warranty_app/presentation/ui/themes/app_theme.dart';

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Master Battery Warranty App",
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppTheme.light,
      home: SplashScreen(),
    );
  }
}
