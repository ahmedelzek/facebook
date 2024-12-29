import 'package:flutter/material.dart';

import '../../../model/home_model.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../widgets/app_widgets.dart';

Widget navigationBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    spacing: 30,
    children: [
      appBarIcon(AppAssets.homeIcon),
      appBarIcon(AppAssets.notifiIcon),
      appBarIcon(AppAssets.watchIcon),
      appBarIcon(AppAssets.storeIcon),
      appBarIcon(AppAssets.profileIcon),
    ],
  );
}

Widget storiesList(List<Story> stories) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal, // Scroll horizontally
    child: Row(
      spacing: 10,
      children: stories
          .map((story) => storyItem(story.profileImage, story.storyImage))
          .toList(),
    ),
  );
}

Widget addStory() {
  return Container(
    width: 112,
    height: 178,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: const DecorationImage(
          image: AssetImage(AppAssets.profileImage), fit: BoxFit.cover),
    ),
    child: Stack(children: [
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          color: Colors.white,
          //
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: const Text(
            'Create a Story',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.center,
        child: Container(
          margin: const EdgeInsets.only(top: 55),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2)),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 24,
          ),
        ),
      ),
    ]),
  );
}

Widget createPost() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(
        width: 10,
      ),
      Container(
          height: 43,
          width: 43,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          clipBehavior: Clip.hardEdge,
          // Ensures the image is clipped to the circle
          child: const Image(
            image: AssetImage(AppAssets.profileImage),
            fit: BoxFit.cover,
          )),
      const SizedBox(
        width: 10,
      ),
      const Text(
        "What is in your mind ?",
        style: TextStyle(
            color: AppColors.gray, fontSize: 16, fontWeight: FontWeight.w500),
      ),
      const SizedBox(
        width: 150,
      ),
      Image.asset(
        AppAssets.imagesIcon,
        height: 22,
        width: 22,
      )
    ],
  );
}
