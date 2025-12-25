import 'package:flutter/material.dart';
import 'package:store/screens/home_screen.dart';
import 'package:store/screens/update_product_screen.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'STORE',
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        UpdateProductScreen.id: (context) => UpdateProductScreen(),
      },
    );
  }
}
