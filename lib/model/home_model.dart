class Story {
  final String profileImage;
  final String storyImage;

  Story({required this.profileImage, required this.storyImage});
}

class Post {
  final String userName;
  final String profileImage;
  final String time;
  final String postImage;
  final String postText;

  Post(
      {required this.userName,
      required this.profileImage,
      required this.time,
      required this.postImage,
      required this.postText});
}
