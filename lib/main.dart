import 'package:demochoichoi/app/todo_app.dart';
import 'package:demochoichoi/ecommerce%20app/model/cart.dart';
import 'package:demochoichoi/ecommerce%20app/pages/intro_page.dart';
import 'package:demochoichoi/ecommerce%20app/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
