import 'package:flutter/material.dart';

class OurBooks extends StatelessWidget {
  const OurBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bookContainer = Container(
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
            'assets/front.png',
            width: 100,
            height: 145,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mahan Nepali',
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'During the political insurgency period (2001-2006), there was critical situation of Poaching .....',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 20),
                Text(
                  "\$9.00",
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
    );

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
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "OUR BOOKS",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(4, (index) => bookContainer),
        ),
      ),
    );
  }
}
