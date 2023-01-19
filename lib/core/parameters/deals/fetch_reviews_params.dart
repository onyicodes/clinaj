import 'package:equatable/equatable.dart';

class FetchReviewsParams extends Equatable {
  final int dealId;

  const FetchReviewsParams(
      {
      required this.dealId,
      });

  @override
  List<Object?> get props => [];
}
