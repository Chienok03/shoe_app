import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key, required this.onTabChange});
  void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey.shade700,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.add_shopping_cart_outlined,
              text: "Cart",
            )
          ]),
    );
  }
}
