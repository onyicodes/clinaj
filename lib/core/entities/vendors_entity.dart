import 'package:clinaj/core/entities/deal_category_entity.dart';
import 'package:clinaj/core/entities/location_entity.dart';
import 'package:equatable/equatable.dart';

class VendorsEntity extends Equatable {
  final int id;
  final String fullName;
  final String yrsExperience;
  final String photo;
  final String dob;
  final String workDescription;
  final String workTitle;
  final String contact;
  final String gender;
  final int userId;
  final String phoneNumber;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int chargePerHour;
  final double ratings;
  final LocationEntity location;
  final CategoryEntity category;
  final int totalReviews;

  const VendorsEntity(
      {required this.id,
      required this.fullName,
      required this.yrsExperience,
      required this.photo,
      required this.phoneNumber,
      required this.dob,
      required this.workDescription,
      required this.workTitle,
      required this.gender,
      required this.userId,
      required this.contact,
      required this.chargePerHour,
      required this.category,
      required this.totalReviews,
      required this.ratings,
      required this.location,
      required this.createdAt,
      required this.updatedAt});

  @override
  List<Object?> get props => [
        id,
        contact,
        fullName,
        yrsExperience,
        photo,
        phoneNumber,
        dob,
        workDescription,
        workTitle,
        gender,
        userId,
        contact,
        createdAt,
        updatedAt
      ];
}
