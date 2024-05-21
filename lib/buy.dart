import 'package:flutter/material.dart';

class Buy extends StatelessWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: const Text(''),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green[900],
            height: 200,
          ),
          SizedBox(height: 30), // Adding some space between the container and the image
          Image.asset(
            'assets/rhinobook.png', // Assuming the image is located in the 'assets' folder
            height: 250, // Adjust the height of the image as needed
            width: 140, // Set width to fill the screen
            fit: BoxFit.cover, // Adjust how the image fits into the space
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Buy(),
  ));
}