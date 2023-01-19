import 'package:equatable/equatable.dart';

class CustomerEntity extends Equatable {
   const CustomerEntity({
        required this.id,
        required this.firstName,
        required this.lastName,
        required this.photo,
        required this.dob,
        required this.userId,
        required this.createdAt,
        required this.updatedAt,
        required this.gender,
    });

    final int id;
    final String firstName;
    final String lastName;
    final dynamic photo;
    final String dob;
    final int userId;
    final DateTime createdAt;
    final DateTime updatedAt;
    final String gender;


    @override
  List<Object?> get props => [id, firstName, lastName, photo, dob, userId, createdAt, updatedAt, gender];
}