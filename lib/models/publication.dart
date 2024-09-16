class Publication {
  final User user;
  final String title;
  final DateTime cratedAt;
  final String imageUrl;
  final int commentsCount;
  final int sharesCount;
  final Reactions currenUserReactions;

  Publication({
    required this.user,
    required this.title,
    required this.cratedAt,
    required this.imageUrl,
    required this.commentsCount,
    required this.sharesCount,
    required this.currenUserReactions,
  });
}

class User {
  final String avatar;
  final String userName;

  User({
    required this.avatar,
    required this.userName,
  });
}

enum Reactions {
  like,
  love,
  laughing,
  sad,
  shocking,
  angry,
}
