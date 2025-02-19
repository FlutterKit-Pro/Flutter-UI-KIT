import 'package:flutter/material.dart';
import 'package:flutter_kit_pro/src/routing/app_routing.dart';

class FlutterKitProApp extends StatelessWidget {
  const FlutterKitProApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Kit Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
