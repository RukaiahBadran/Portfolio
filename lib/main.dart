import 'package:flutter_animate/flutter_animate.dart';
import 'package:nakul_dev/toResponsiveLayout_Main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Animate.restartOnHotReload = true;
    return MaterialApp(
      title: "Rukaiah Badran",
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
      ),
      debugShowCheckedModeBanner: false,
      // home: const HomePage(),
      home: const toResponsiveLayout(), //Website Enabled
      // home: const NotResp(), // Website Disabled
    );
  }
}
