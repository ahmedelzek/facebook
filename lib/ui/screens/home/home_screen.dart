import 'package:facebook/ui/utils/app_assets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(image: AssetImage(AppAssets.appLogo)),
      ),
    );
  }
}

Widget appBar() {
  return Row(
    children: [
      Image.asset(
        AppAssets.appTextLogo,
        width: 150,
        height: 36,
      ),
      const SizedBox(
        width: 110,
      ),
      appBarIcon(),
      appBarIcon(),
      appBarIcon()
    ],
  );
}

Widget appBarIcon() {
  return Image.asset(
    AppAssets.addBtnIcon,
    height: 22,
    width: 22,
  );
}
