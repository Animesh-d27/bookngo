import 'package:flutter/material.dart';

class TextBooknGo extends StatelessWidget {
  const TextBooknGo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
        'Recommended Movies',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ) ,
    );
  }
}
