import 'package:clinaj/core/entities/user_entity.dart';
import 'package:equatable/equatable.dart';

class ReviewEntity extends Equatable {
  const ReviewEntity({
    required this.id,
    required this.message,
    required this.rating,
    required this.vendorID,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
  });

  final int id;
  final String message;
  final double rating;
  final int vendorID;
  final DateTime createdAt;
  final DateTime updatedAt;
  final UserEntity user;

  @override
  List<Object?> get props => [
        id,
        message,
        rating,
        vendorID,
        createdAt,
        updatedAt,
        user
      ];
}
