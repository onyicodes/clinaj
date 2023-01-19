import 'package:clinaj/core/entities/customer_entity.dart';
import 'package:equatable/equatable.dart';

class ReviewEntity  extends Equatable{
  const   ReviewEntity({
        required this.id,
        required this.message,
        required this.type,
        required this.rating,
        required this.customerId,
        required this.dealId,
        required this.createdAt,
        required this.updatedAt,
        required this.customer,
    });

    final int id;
    final String message;
    final String type;
    final double rating;
    final int customerId;
    final int dealId;
    final DateTime createdAt;
    final DateTime updatedAt;
    final CustomerEntity customer;


     @override
  List<Object?> get props => [id, message, type, rating, customerId, dealId, createdAt, updatedAt, customer];
}