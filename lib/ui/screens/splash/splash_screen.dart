import 'package:facebook/ui/screens/home/home_screen.dart';
import 'package:facebook/ui/utils/app_assets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: splashScreen(),
    );
  }

  Widget splashScreen() {
    return Stack(
      children: [
        Center(
          child: SizedBox(
            width: 100,
            height: 100,
            child: Image.asset(
              AppAssets.splashLogo,
              fit: BoxFit.contain,
            ),
          ),
        ),
        // Bottom brand logo
        Positioned(
          left: 0,
          right: 0,
          bottom: 32, // Adjust this value for desired bottom padding
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "From",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 8), // Space between text and logo
              SizedBox(
                width: 100, // Adjust width as needed
                child: Image.asset(
                  AppAssets.brandLogo,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
