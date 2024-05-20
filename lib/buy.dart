import 'package:flutter/material.dart';

class Buy extends StatelessWidget {
  const Buy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: const Text(''),
      ),
      body: Container(
        color: Colors.green[900],
        height: 200,
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Buy(),
  ));
}
