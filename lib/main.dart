import 'package:clima/route_generator.dart';
import 'package:clima/screens/city_screen.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
//      routes: {
//        '/': (context) => LoadingScreen(),
//        '/location': (context) => LocationScreen(),
//        '/city': (context) => CityScreen()
//      },
    );
  }
}
