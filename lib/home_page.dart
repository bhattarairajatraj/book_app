import 'package:flutter/material.dart';
import 'package:header_navbar/MahanNepali.dart';
import 'package:header_navbar/buy.dart';
import 'package:header_navbar/our_books.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: HomePage(),
    ),
  ));
}

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
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Buy()),
              );
            },
            child: Container(
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Buy()),
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.green[900],
                          borderRadius: BorderRadius.circular(10),
                        ),
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
          ),
          _buildBooksContainer(context),
          _buildMoviesContainer(),
        ],
      ),
    );
  }

  Widget _buildBooksContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
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
                child: Row(
                  children: [
                    Text(
                      "View All",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_circle_right_outlined,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildBookItem('assets/front.png', 'Mahan Nepali ', onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MahanNepali()),
                  );
                }),
                _buildBookItem('assets/back.png', 'Mahan Nepali', onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MahanNepali()));
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBookItem(String imagePath, String title,
      {required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.fromLTRB(5, 30, 10, 5),
        child: Column(
          children: [
            Image.asset(imagePath),
            SizedBox(height: 10.0),
            Text(
              title,
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMoviesContainer() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 25, right: 20),
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
                child: Row(
                  children: [
                    Text(
                      "View All",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_circle_right_outlined,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildMovieItem('assets/you.jpg'),
                _buildMovieItem('assets/you.jpg'),
                _buildMovieItem('assets/you.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMovieItem(String imagePath) {
    return Container(
      width: 140,
      height: 88,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
