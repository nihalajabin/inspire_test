import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inspire_test/home_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primarySwatch: Color(0xffffffff),
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          )),
      home: const HomeLayout(),
    );
  }
}
