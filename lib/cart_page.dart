import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Center(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "empty ",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Cart',
              style: TextStyle(
                color: Color(0xFF005429),
                fontFamily: 'Poppins',
                fontSize: 32.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
