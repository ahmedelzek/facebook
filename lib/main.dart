import 'package:facebook/ui/screens/home/home_screen.dart';
import 'package:facebook/ui/screens/login/login_screen.dart';
import 'package:facebook/ui/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        HomeScreen.routeName: (_) => const HomeScreen(),
        LoginScreen.routeName: (_) => const LoginScreen()
      },
      initialRoute: LoginScreen.routeName,
    );
  }
}
