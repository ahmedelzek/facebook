import 'package:facebook/ui/utils/app_assets.dart';
import 'package:facebook/ui/widgets/app_widgets.dart';
import 'package:flutter/material.dart';

import '../../../model/home_model.dart';
import '../../utils/app_colors.dart';

Widget postsList(List<Post> posts) {
  return Column(
    children: posts
        .map((post) => Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: postItem(post),
            ))
        .toList(),
  );
}

Widget postItem(Post post) {
  return Column(
    spacing: 10,
    children: [
      headerPost(post),
      Container(
        margin: const EdgeInsets.only(left: 10),
        alignment: Alignment.centerLeft,
        child: Text(
          post.postText,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
        ),
      ),
      Image.asset(
        AppAssets.storyImage1,
        height: 271,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      footPost(),
      lineBetweenItems()
    ],
  );
}

Widget headerPost(Post post) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    spacing: 10,
    children: [
      Container(
        height: 53,
        width: 53,
        decoration: const BoxDecoration(shape: BoxShape.circle),
        clipBehavior: Clip.hardEdge,
        child: Image.asset(
          post.postImage,
          fit: BoxFit.cover,
        ),
      ),
      nameAndTimeText(post),
      const SizedBox(
        width: 200,
      ),
      Image.asset(
        AppAssets.listIcon,
        height: 23,
        width: 23,
      )
    ],
  );
}

Widget nameAndTimeText(Post post) {
  return Column(
    children: [
      Text(
        post.userName,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
      ),
      Row(
        children: [
          Text(
            "${post.time} .",
            style: const TextStyle(
                color: AppColors.gray,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
          const Icon(
            Icons.public,
            color: AppColors.gray,
          )
        ],
      )
    ],
  );
}

Widget footPost() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    spacing: 10,
    children: [
      appBarIcon(AppAssets.loveIcon),
      appBarIcon(AppAssets.commentIcon),
      appBarIcon(AppAssets.shareIcon),
      const SizedBox(
        width: 240,
      ),
      appBarIcon(AppAssets.saveIcon),
    ],
  );
}
