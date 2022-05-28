import 'package:flutter/material.dart';
import 'package:readern/src/module/module.dart';

class AppRouter {
  static const String home = '/';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const CounterPage(),
        );

      default:
        throw RouteExc();
    }
  }
}

class RouteExc implements Exception {
  RouteExc();

  @override
  String toString() => 'Route not found!';
}
