import 'package:equatable/equatable.dart';

class LocationEntity extends Equatable {
  final int id;
  final double latitude;
  final double longitude;
  final String address;
  final DateTime createdAt;
  final DateTime updatedAt;

  const LocationEntity(
      {required this.id, required this.latitude, required this.longitude,
      required this.address,
      required this.createdAt,
      required this.updatedAt});

  @override
  List<Object?> get props => [id, latitude, longitude, address, createdAt, updatedAt];
}
