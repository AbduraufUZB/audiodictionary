import 'package:audiodictionary/screens/home_page.dart';
import 'package:audiodictionary/screens/translate_page.dart';
import 'package:flutter/material.dart';

class MyRoute {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;

    switch (s.name) {
      case "/":
        return MaterialPageRoute(builder: (ctx) => const HomePage());
      case "/tr":
        return MaterialPageRoute(builder: (ctx) => const TranslatePage());
    }
  }
}
