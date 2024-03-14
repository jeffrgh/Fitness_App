import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/screens/create.dart';
import '/screens/gs_gender.dart';
import '/screens/gs_place.dart';
import '/screens/gs_weight.dart';
import '/screens/initiate.dart';
import '/screens/login.dart';
import '/screens/signup.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.immersive,
  );
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then((_) {
    runApp(
      const MyApp(),
    );
  });
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
        '/create': (context) => const Create(),
        '/signup': (context) => const SignUp(),
        '/login': (context) => const LogIn(),
        '/gs': (context) => const Initiation(),
        '/gender': (context) => const GenderGS(),
        '/weight': (context) => const WeightGS(),
        '/place': (context) => const PlaceGS(),
      },
      home: const Create(),
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color.fromARGB(244, 60, 60, 59),
        colorScheme: const ColorScheme.dark(
          surface: Color.fromARGB(244, 60, 60, 59),
          brightness: Brightness.dark,
        ),
      ),
    );
  }
}
