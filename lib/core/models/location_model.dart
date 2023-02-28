// ignore_for_file: annotate_overrides, overridden_fields

import 'package:clinaj/core/entities/location_entity.dart';

class LocationModel extends LocationEntity {
  
  final int id;
  final double latitude;
  final double longitude;
  final String address;
  final DateTime createdAt;
  final DateTime updatedAt;

  const LocationModel(
      {required this.id,
      required this.latitude,
      required this.longitude,
      required this.address,
      required this.createdAt,
      required this.updatedAt
      }) : super(id:id, latitude:latitude, longitude: longitude, address: address, createdAt: createdAt, updatedAt: updatedAt);

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
        id: json['id'] as int,
        latitude: json['latitude'] as double,
        longitude: json['longitude'] as double,
        address: json['address'] as String,
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['address'] = address;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    
    return data;
  }
}
