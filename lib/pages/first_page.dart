import 'package:demochoichoi/pages/home_page.dart';
import 'package:demochoichoi/pages/profile_page.dart';
import 'package:demochoichoi/pages/setting_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //This keeps track of the current page to display
  int _selectedIndex = 0;

  //This method updates the new selected index
  void _navigateBottomBar(int index) {
      setState(() {
        _selectedIndex = index;
      });
  }

  //The page we have in our app
  final List _listPages = [HomePage(), ProfilePage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            "First Page",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: _listPages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white54,
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          items: const [
            //home
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            //profile
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            //setting
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting")
          ],
        ),
      ),
    );
  }
}
