import 'package:startup_namer/screens/home_screen.dart';
import 'package:startup_namer/routes.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";

void main() => runApp(const MyApp());

//
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        appBarTheme: const AppBarTheme(
          color: Colors.deepOrange,
        ),
      ),
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      onGenerateRoute: CustomRouter.generateRoute,
    );
  }
}
