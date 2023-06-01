import 'package:flutter/material.dart';
import 'package:login_ejemplo/pages/bienvenida.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Silence',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: GettingStarted(),
    );
  }
}
