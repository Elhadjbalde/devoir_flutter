import 'package:flutter/material.dart';
import 'package:wireframe_app/widgets/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wireframe_app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Profile facebook'),
      debugShowCheckedModeBanner: false,
    );
  }
}
