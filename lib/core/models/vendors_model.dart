// ignore_for_file: annotate_overrides, overridden_fields
import 'package:clinaj/core/entities/vendors_entity.dart';
import 'package:clinaj/core/models/deal_category_model.dart';
import 'package:clinaj/core/models/location_model.dart';

class VendorsModel extends VendorsEntity {
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
  final LocationModel location;
  final CategoryModel category;
  final int totalReviews;

  const VendorsModel(
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
      required this.createdAt,
      required this.chargePerHour,
      required this.ratings,
      required this.location,
      required this.category,
      required this.totalReviews,
      required this.updatedAt})
      : super(
            id: id,
            contact: contact,
            fullName: fullName,
            yrsExperience: yrsExperience,
            phoneNumber: phoneNumber,
            photo: photo,
            dob: dob,
            workDescription: workDescription,
            workTitle: workTitle,
            gender: gender,
            userId: userId,
            chargePerHour: chargePerHour,
            category: category,
            location: location,
            totalReviews: totalReviews,
            ratings: ratings,
            createdAt: createdAt,
            updatedAt: updatedAt);

  factory VendorsModel.fromMap(Map<String, dynamic> json) => VendorsModel(
        id: json["id"],
        fullName: json["firstName"],
        yrsExperience: json["description"],
        photo: json["photo"],
        dob: json["dob"],
        workDescription: json["businessName"],
        workTitle: json["businessType"],
        contact: json["contact"],
        gender: json["gender"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        userId: json["userId"],
        phoneNumber: json["phoneNumber"],
        ratings: json["ratings"],
        chargePerHour: json["chargePerHour"],
        location: json["location"],
        category: json["category"],
        totalReviews: json["totalReviews"]
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": fullName,
        "description": yrsExperience,
        "photo": photo,
        "dob": dob,
        "businessName": workDescription,
        "businessType": workTitle,
        "contact": contact,
        "gender": gender,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "userId": userId,
        "phoneNumber": phoneNumber,
        "totalReviews": totalReviews,
        "location": location,
        "category": category,
        "ratings": ratings,
        "chargePerHour": chargePerHour
      };
}
