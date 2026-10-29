import 'package:flutter/material.dart';

import 'screens/edge_insets_screen.dart';

class EdgeInsetsApp extends StatelessWidget {
  const EdgeInsetsApp({super.key});

  @override
  Widget build(BuildContext context) {
    const lavender = Color(0xFFFFF7FF);

    return MaterialApp(
      title: 'EdgeInsets Demonstration',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF68558A),
          surface: lavender,
        ),
        scaffoldBackgroundColor: lavender,
        appBarTheme: const AppBarTheme(
          backgroundColor: lavender,
          foregroundColor: Color(0xFF30283A),
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Color(0xFF30283A),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: const EdgeInsetsScreen(),
    );
  }
}
