import 'package:flutter/material.dart';
import 'package:header_navbar/MahanNepali.dart';
import 'package:header_navbar/buy.dart';

class OurBooks extends StatelessWidget {
  const OurBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Stack(
          children: [
            Positioned(
              top: -120,
              left: -230,
              width: 645,
              height: 200,
              child: Opacity(
                opacity: 0.40,
                child: Image.asset(
                  'assets/original.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 0,
              right: 0,
              bottom: 0,
              child: Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "our ",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: "Book's",
                        style: TextStyle(
                          color: Color(0xFF005429),
                          fontFamily: 'Poppins',
                          fontSize: 32.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BookContainer(
              imagePath: 'assets/front.png',
              title: 'Mahan Nepali',
              description:
                  'During the political insurgency period (2001-2006), there was critical situation of Poaching .....',
              price: '\$9.00',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MahanNepali()));
              },
            ),
            BookContainer(
              imagePath: 'assets/rhinobook.png',
              title: 'Rhino HeartBeat',
              description:
                  'A success story of Rhino Conservation in Chitwan National Park, Nepal. During the political........',
              price: '\$9.00',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Buy()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BookContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String price;
  final VoidCallback onTap;

  const BookContainer({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.price,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 340,
        height: 170,
        margin: EdgeInsets.only(top: 30, left: 20),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: 100,
              height: 145,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    description,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Colors.black,
                    ),
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 20),
                  Text(
                    price,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
