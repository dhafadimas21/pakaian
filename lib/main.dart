import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_pakaian/cart_provider.dart';
import 'package:shop_pakaian/login_page.dart';
import 'package:shop_pakaian/navigation.dart';

import 'package:shop_pakaian/splash_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
    child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stone Island Store',
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
        LoginPage.routeName: (context) => LoginPage(),
      },
    );
  }
}
