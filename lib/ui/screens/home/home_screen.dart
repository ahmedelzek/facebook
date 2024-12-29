import 'package:facebook/ui/screens/home/post_widgets.dart';
import 'package:facebook/ui/screens/home/stories_widgets.dart';
import 'package:facebook/ui/utils/app_assets.dart';
import 'package:facebook/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../model/home_model.dart';
import '../../widgets/app_widgets.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Story> stories = [];
  List<Post> posts = [];

  @override
  void initState() {
    stories.addAll([
      Story(
          profileImage: AppAssets.profileImage,
          storyImage: AppAssets.storyImage1),
      Story(
          profileImage: AppAssets.profileImage1,
          storyImage: AppAssets.storyImage1),
      Story(
          profileImage: AppAssets.profileImage1,
          storyImage: AppAssets.profileImage1),
      Story(
          profileImage: AppAssets.profileImage1,
          storyImage: AppAssets.storyImage1),
      Story(
          profileImage: AppAssets.profileImage1,
          storyImage: AppAssets.storyImage1),
    ]);
    posts.addAll([
      Post(
          userName: "Route",
          profileImage: AppAssets.routeImage,
          time: "7",
          postImage: AppAssets.profileImage,
          postText: "Nothing To Write"),
      Post(
          userName: "Route",
          profileImage: AppAssets.routeImage,
          time: "7",
          postImage: AppAssets.profileImage,
          postText: "Nothing To Write"),
      Post(
          userName: "Route",
          profileImage: AppAssets.routeImage,
          time: "7",
          postImage: AppAssets.profileImage,
          postText: "Nothing To Write"),
      Post(
          userName: "Route",
          profileImage: AppAssets.routeImage,
          time: "7",
          postImage: AppAssets.profileImage,
          postText: "Nothing To Write"),
      Post(
          userName: "Route",
          profileImage: AppAssets.routeImage,
          time: "7",
          postImage: AppAssets.profileImage,
          postText: "Nothing To Write"),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: appBar(),
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.white,
        ),
        backgroundColor: Colors.white,
        body: body(stories, posts));
  }
}

Widget appBar() {
  return Row(
    spacing: 8,
    children: [
      Image.asset(
        AppAssets.appTextLogo,
        width: 150,
        height: 36,
      ),
      const SizedBox(
        width: 98,
      ),
      appBarIcon(AppAssets.addBtnIcon),
      appBarIcon(AppAssets.searchIcon),
      appBarIcon(AppAssets.messengerIcon)
    ],
  );
}

Widget body(List<Story> stories, List<Post> posts) {
  return SingleChildScrollView(
    child: Column(
      spacing: 10,
      children: [
        navigationBar(),
        Container(
          width: double.infinity,
          height: 1,
          decoration: const BoxDecoration(color: AppColors.gray),
        ),
        createPost(),
        lineBetweenItems(),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal, // Scroll horizontally
            child:
                Row(spacing: 10, children: [addStory(), storiesList(stories)])),
        lineBetweenItems(),
        postsList(posts), // Added this line
      ],
    ),
  );
}
