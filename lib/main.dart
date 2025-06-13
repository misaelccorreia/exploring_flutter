import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lottie Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LottieScreen(),
    );
  }
}

class LottieScreen extends StatelessWidget {
  const LottieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lottie Animation")),
      body: Center(
        child: Lottie.asset(
          'assets/flow.json',
          width: 1200,
          height: 2400,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
