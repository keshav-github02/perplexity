import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplexity/pages/home_page.dart';
import 'package:perplexity/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    title: 'Perplexity AI',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        textTheme: GoogleFonts.interTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
      home: HomePage(),

    );


  }
}
