import 'package:flutter/material.dart';
import 'package:shop_pakaian/dashboard.dart';
import 'package:shop_pakaian/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'shop pakaian',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          background: Colors.white,
          seedColor: const Color.fromARGB(255, 255, 255, 255)
        ),
        useMaterial3: true,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        Dashboard_page.routeName: (context) => Dashboard_page(),
      },
    );
  }
}
