import 'package:demochoichoi/ecommerce%20app/component/bottom_nav_bar.dart';
import 'package:demochoichoi/ecommerce%20app/pages/shop_page.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //this selected index is to control the bottom nav bar
  int selectedIndex = 0;

  //This method will update our selected index
  //when the user taps on the bottom bar
  void navigateBottomBar(int int) {
    setState(() {
      selectedIndex = int;
    });
  }

  //pages to display
  final List<Widget> pages = [
    //shop page
    ShopPage(),
    //cart page
    CartPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //logo
                DrawerHeader(
                    child: Image.asset("assets/icons8-nike-250.png",
                        color: Colors.white)),
                //other pages
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(Icons.home, color: Colors.white),
                    title: Text(
                      "H O M E",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(Icons.add_shopping_cart_outlined,
                        color: Colors.white),
                    title: Text(
                      "C A R T",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout_outlined, color: Colors.white),
                title: Text(
                  "Logout",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (int) => navigateBottomBar(int),
      ),
      body: pages[selectedIndex],
    );
  }
}
