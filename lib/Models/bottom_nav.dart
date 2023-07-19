import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BtmNav extends StatefulWidget {
  const BtmNav({super.key});

  @override
  State<BtmNav> createState() => _BtmNavState();
}

class _BtmNavState extends State<BtmNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
              tabBackgroundColor: Colors.grey.shade800,
              activeColor: Colors.white,
              padding: const EdgeInsets.all(16),
              gap: 8,
              color: Colors.white,
              backgroundColor: Colors.black,
              tabs: [
                const GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => const ProfilePage()));
                  },
                ),
                const GButton(icon: Icons.shopping_cart, text: 'Cart'),
                const GButton(icon: Icons.apps, text: 'More'),
              ]),
        ),
      ),
    );
  }
}
