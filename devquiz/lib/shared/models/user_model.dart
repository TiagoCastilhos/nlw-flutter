class UserModel {
  final String name;
  final String imageUrl;
  final int score;

  UserModel({
    required this.name,
    required this.imageUrl,
    this.score = 0,
  });
}
