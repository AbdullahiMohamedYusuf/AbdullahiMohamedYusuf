import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import './pages/list.dart';
import 'dart:convert';
import 'dart:io';
import './apis/sample.dart';
import 'package:http/http.dart' as http;
import './pages/playground.dart';
import './pages/list.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.black,
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),

      ),
      home: Tasks(),
    );
  }
}
