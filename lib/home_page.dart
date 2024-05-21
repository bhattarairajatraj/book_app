import 'package:flutter/material.dart';
import 'package:header_navbar/buy.dart';
import 'package:header_navbar/our_books.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 25),
            child: Text(
              'Popular',
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            width: 350,
            height: 200,
            margin: EdgeInsets.only(top: 10, left: 20),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(148, 192, 209, 42),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rhino',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Heartbeat',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  left: 5,
                  bottom: 10,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Buy()));
                    },
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.green[900],
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 200,
                  top: 0,
                  right: -10,
                  bottom: 0,
                  child: Image.asset(
                    'assets/rhinobook.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          _buildBooksContainer(context),
          _buildMoviesContainer(),
        ],
      ),
    );
  }

  Widget _buildBooksContainer(context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Books',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                onTap: () {
                  try {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OurBooks()),
                    );
                  } catch (e) {
                    print('Error navigating: $e');
                  }
                },
                child: Text(
                  "View All ->",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildBookItem('assets/front.png', 'Mahan Nepali'),
                _buildBookItem('assets/back.png', 'Mahan Nepali'),
                _buildBookItem('assets/front.png', 'Mahan Nepali'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBookItem(String imagePath, String bookTitle) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 30, 10, 5),
      child: Column(
        children: [
          Image.asset(imagePath),
          SizedBox(height: 20.0),
          Text(
            bookTitle,
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMoviesContainer() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Movies',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "View All ->",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 160,
                  height: 88,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.network(
                    'https://lh3.googleusercontent.com/3zkP2SYe7yYoKKe47bsNe44yTgb4Ukh__rBbwXwgkjNRe4PykGG409ozBxzxkrubV7zHKjfxq6y9ShogWtMBMPyB3jiNps91LoNH8A=s500',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 160,
                  height: 88,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.network(
                    'https://lh3.googleusercontent.com/3zkP2SYe7yYoKKe47bsNe44yTgb4Ukh__rBbwXwgkjNRe4PykGG409ozBxzxkrubV7zHKjfxq6y9ShogWtMBMPyB3jiNps91LoNH8A=s500',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 160,
                  height: 88,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.network(
                    'https://lh3.googleusercontent.com/3zkP2SYe7yYoKKe47bsNe44yTgb4Ukh__rBbwXwgkjNRe4PykGG409ozBxzxkrubV7zHKjfxq6y9ShogWtMBMPyB3jiNps91LoNH8A=s500',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void main() {
    runApp(MaterialApp(
      home: Scaffold(
        body: HomePage(),
      ),
    ));
  }
}
