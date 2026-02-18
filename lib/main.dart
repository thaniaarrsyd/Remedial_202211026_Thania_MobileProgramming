import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // 1. Import ini
import 'thania_dashboard.dart';

void main() => runApp(const ThaniaApp());

class ThaniaApp extends StatelessWidget {
  const ThaniaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        useMaterial3: true,
      ),
      home: const ThaniaDashboard(),
    );
  }
}
