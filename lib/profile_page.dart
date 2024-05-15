import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[100],
          title: Text(
            'Mahan Nepali',
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.green[100],
        ));
  }
}
