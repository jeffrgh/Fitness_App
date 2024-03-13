import 'package:fitness_app/screens/initiate.dart';
import 'package:flutter/material.dart';

import '/screens/home.dart';
import '/screens/login.dart';
import '/screens/signup.dart';

void main() {
  runApp(
    const MyApp(),
  );
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
      routes: {
        '/home': (context) => const Home(),
        '/signup': (context) => const SignUp(),
        '/login': (context) => const LogIn(),
        '/gs': (context) => const Initiation(),
      },
      home: const Home(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(
          background: Color.fromARGB(244, 60, 60, 59),
          brightness: Brightness.dark,
        ),
      ),
    );
  }
}
