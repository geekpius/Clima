import 'package:clima/screens/city_screen.dart';
import 'package:clima/screens/loading_screen.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => LoadingScreen());
      case '/location':
        return MaterialPageRoute(
          builder: (context) => LocationScreen(
            weatherData: args,
          ),
        );
      case '/city':
        return MaterialPageRoute(builder: (context) => CityScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('ERROR'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('Page not found!'),
        ),
      );
    });
  }
}
