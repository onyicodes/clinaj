// ignore_for_file: overridden_fields, annotate_overrides

import 'package:clinaj/core/entities/reviews_entity.dart';
import 'package:clinaj/core/models/user_model.dart';

class ReviewModel extends ReviewEntity {
  ReviewModel({
    required this.id,
    required this.message,
    required this.rating,
    required this.vendorID,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
  }) : super(
            id: id,
            message: message,
            rating: rating,
            vendorID: vendorID,
            createdAt: createdAt,
            updatedAt: updatedAt,
            user: user);

  final int id;
  final String message;
  final double rating;
  final int vendorID;
  final DateTime createdAt;
  final DateTime updatedAt;
  final UserModel user;

  factory ReviewModel.fromMap(Map<String, dynamic> json) => ReviewModel(
        id: json["id"],
        message: json["message"],
        rating: json["rating"].toDouble(),
        vendorID: json["dealId"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        user: UserModel.fromJson(json["user"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "message": message,
        "rating": rating,
        "vendorID": vendorID,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "user": user.toMap(),
      };
}
