// main.dart
import 'package:flutter/material.dart';
import 'package:myapp/pages/beauty.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/kids.dart';
import 'package:myapp/pages/men.dart';
import 'package:myapp/pages/new_release.dart';
import 'package:myapp/pages/toys.dart';
import 'package:myapp/pages/women.dart';
import 'package:myapp/sports.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/new release': (context) => NewReleasePage(),
        '/men': (context) => MenPage(),
        '/women': (context) => WomenPage(),
        '/kids': (context) => KidsPage(),
        '/sports': (context) => SportsPage(),
        '/home': (context) => HomePage(),
        '/beauty': (context) => BeautyPage(),
        '/toys': (context) => ToysPage(),
      },
    ),
  );
}