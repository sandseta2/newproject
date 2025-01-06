import 'package:flutter/material.dart';
import 'package:myproject1/my_stateful_widget.dart';
import 'package:myproject1/page_answer/answer1.dart';
import 'package:myproject1/page_answer/answer2.dart';
import 'package:myproject1/page_answer/answer3.dart';
import 'package:myproject1/page_answer/answer4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
          useMaterial3: true,
        ),
        home: const ProfilePage());
  }
}

class GreetingWidget extends StatelessWidget {
  final String name;
  const GreetingWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo APP'),
        backgroundColor: Colors.orange,
      ),
      body: Center(child: Text('Hello, $name')), // Removed `const`
    );
  }
}
