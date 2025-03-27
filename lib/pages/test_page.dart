import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test Page")),
      body: Center(
        child: Text("You tapped a link!", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
