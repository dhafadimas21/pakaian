import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shop_pakaian/cart.dart';
import 'package:shop_pakaian/home_screen.dart';
import 'package:shop_pakaian/notifikasi.dart';

class Navigation extends StatefulWidget {
  static const String routeName = '/Navigation';
  final String username;
  final String email;
  const Navigation({super.key, required this.username, required this.email});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  late List<Widget> _widgetOptions;
  
  @override
  void initState() {
    super.initState();
    _widgetOptions = <Widget>[
      HomeScreen(username: widget.username, email: widget.email),  // Pass username and email to HomeScreen
      CartPage(),
      Notifikasi(),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2,
              offset: Offset(0, 0),
              spreadRadius: 1,
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 9),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 14,
              ),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.black,
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: LineIcons.shoppingCart,
                  text: 'Cart',
                ),
                GButton(
                  icon: LineIcons.bellAlt,
                  text: 'Notifications',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
