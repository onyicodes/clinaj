import 'package:equatable/equatable.dart';

class SellerEntity extends Equatable {
  final int id;
  final String firstName;
  final String lastName;
  final String description;
  final String photo;
  final String dob;
  final String businessName;
  final String businessType;
  final String contact;
  final String gender;
  final int userId;
  final String phoneNumber;
  final DateTime createdAt;
  final DateTime updatedAt;

  const SellerEntity(
      {required this.id, 
      required this.firstName,
      required this.lastName,
      required this.description,
      required this.photo,
      required this.phoneNumber,
      required this.dob,
      required this.businessName,
      required this.businessType,
      required this.gender,
      required this.userId,
      required this.contact,
      required this.createdAt,
      required this.updatedAt});

  @override
  List<Object?> get props => [id,  contact, 
  firstName,
  lastName,
  description,
  photo,
  phoneNumber,
  dob,
  businessName,
  businessType,
  gender,
  userId,
  contact,
  createdAt, updatedAt];
}
