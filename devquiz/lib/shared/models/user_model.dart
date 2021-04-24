import 'dart:convert';

class UserModel {
  final String name;
  final String imageUrl;
  final int score;

  UserModel({
    required this.name,
    required this.imageUrl,
    this.score = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'score': score,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'],
      imageUrl: map['imageUrl'],
      score: map['score'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
