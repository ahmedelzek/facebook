import 'package:facebook/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../utils/app_assets.dart';

Widget textField(TextEditingController controller, String textHint) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
          hintText: textHint,
          hintStyle: const TextStyle(color: AppColors.gray),
          filled: true,
          fillColor: AppColors.textFieldColor,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: AppColors.gray, width: 1.0), // Default border color
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: AppColors.gray, width: 1.0), // Default border color
            borderRadius: BorderRadius.circular(15),
          )),
    ),
  );
}

Widget facebookImage() {
  return SizedBox(
      width: 100,
      height: 100,
      child: Image.asset(
        AppAssets.splashLogo,
        fit: BoxFit.contain,
      ));
}

void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: const Text(
        "Username or Password is invalid",
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
      duration: const Duration(seconds: 2),
      // Duration of the SnackBar
      backgroundColor: Colors.redAccent,
      // Background color
      action: SnackBarAction(
        label: "Ok",
        textColor: Colors.white,
        onPressed: () {
          // Action when the button is pressed
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("OK Pressed!")),
          );
        },
      ),
      behavior: SnackBarBehavior.floating,
      // Makes it float above content
      margin: const EdgeInsets.all(16), // Adds margin when floating
    ),
  );
}

Widget appBarIcon(String icon) {
  return Image.asset(
    icon,
    height: 30,
    width: 30,
  );
}

Widget storyItem(String profileImage, String storyImage) {
  return Container(
    width: 112,
    height: 178,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Stack(
      alignment: Alignment.topLeft,
      children: [
        SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(storyImage, fit: BoxFit.cover))),
        Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.all(5),
            decoration: const BoxDecoration(shape: BoxShape.circle),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(profileImage, fit: BoxFit.cover)),
      ],
    ),
  );
}

Widget lineBetweenItems() {
  return Container(
    width: double.infinity,
    height: 2,
    decoration: const BoxDecoration(color: AppColors.gray),
  );
}
