import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
            child: Text(
      "empty ",
      style: TextStyle(
        color: Colors.black,
        fontFamily: 'Poppins',
        fontSize: 20.0,
        fontWeight: FontWeight.w400,
      ),
    )));
  }
}
