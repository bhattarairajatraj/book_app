import 'package:flutter/material.dart';
import 'package:header_navbar/test.dart';

import 'author_page.dart';
import 'books_page.dart';
import 'cart_page.dart';
import 'home_page.dart';
import 'profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    BooksPage(),
    AuthorPage(),
    HomePage(),
    CartPage(),
    ProfilePage(),
  ];

  bool _showAppBar = true;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0 || index == 1 || index == 2 || index == 3 || index == 4) {
        _showAppBar = true;
      } else {
        _showAppBar = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _showAppBar ? buildAppBar() : null,
      body: Container(
        color: Colors.green[100],
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      backgroundColor: Colors.green[100],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10, left: 50.0, right: 50.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35.0),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 100),
            height: 45,
            child: Container(
              color: Colors.green[900],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  _widgetOptions.length,
                  (index) => IconButton(
                    icon: Icon(_getIconData(index)),
                    onPressed: () => _onItemTapped(index),
                    color: _selectedIndex == index
                        ? Color.fromARGB(255, 255, 228, 141)
                        : Colors.white,
                    tooltip: _getTooltip(index),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  IconData _getIconData(int index) {
    switch (index) {
      case 0:
        return Icons.book_outlined;
      case 1:
        return Icons.mode_edit_outline_outlined;
      case 2:
        return Icons.home_outlined;
      case 3:
        return Icons.shopping_cart_outlined;
      case 4:
        return Icons.person_2_outlined;
      default:
        return Icons.error;
    }
  }

  String _getTooltip(int index) {
    switch (index) {
      case 0:
        return 'Books';
      case 1:
        return 'Author';
      case 2:
        return 'Home';
      case 3:
        return 'Cart';
      case 4:
        return 'Profile';
      default:
        return '';
    }
  }

  PreferredSizeWidget? buildAppBar() {
    if (_selectedIndex == 0) {
      return AppBar(
        centerTitle: true,
        flexibleSpace: Stack(
          children: [
            Positioned(
              top: -154,
              left: -30,
              width: 645,
              height: 290,
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
                        text: "reader's ",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: 'Point',
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
      );
    } else if (_selectedIndex == 1) {
      return AppBar(
        centerTitle: true,
        flexibleSpace: Stack(
          children: [
            Positioned(
              top: -154,
              left: -80,
              width: 645,
              height: 290,
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
                        text: "about ",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: 'Author',
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
      );
    } else if (_selectedIndex == 2) {
      return AppBar(
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TestPage()));
            },
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/Rectangle 14.png'),
              radius: 20,
            ),
          ),
        ),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
        flexibleSpace: Stack(
          children: [
            Positioned(
              top: -154,
              left: -130,
              width: 645,
              height: 290,
              child: Opacity(
                opacity: 0.40,
                child: Image.asset(
                  'assets/original.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 0,
              right: 200,
              bottom: 10,
              child: Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else if (_selectedIndex == 3) {
      return AppBar(
        centerTitle: true,
        flexibleSpace: Stack(
          children: [
            Positioned(
              top: -154,
              left: -180,
              width: 645,
              height: 290,
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
                        text: "my ",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: 'Cart',
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
      );
    } else if (_selectedIndex == 4) {
      return AppBar(
        centerTitle: true,
        flexibleSpace: Stack(
          children: [
            Positioned(
              top: -154,
              left: -230,
              width: 645,
              height: 290,
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
                        text: "sign ",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: 'In',
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
      );
    }
    return null;
  }
}
