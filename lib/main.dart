import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/pages/shop_page.dart';

import 'providers/cart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping App',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 218, 168, 60),
              primary: const Color.fromARGB(255, 218, 168, 60),
            ),
            useMaterial3: true,
            fontFamily: 'Lato',
            inputDecorationTheme: const InputDecorationTheme(
              hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
            ),
            textTheme: const TextTheme(
              titleLarge: TextStyle(
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
              titleMedium: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              bodyMedium: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            )),
        home: const HomePage(),
        // home: ProductDatailsPage(
        //   product: products[0],
        // ),
      ),
    );
  }
}
