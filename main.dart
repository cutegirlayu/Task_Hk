// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:task_hk/add_product.dart';
// import 'package:task_hk/add_product.dart';
import 'login_page.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/add_product': (context) => AddProductForm(),
      },
    );
  }
}
