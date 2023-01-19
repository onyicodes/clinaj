import 'package:clinaj/core/entities/reviews_entity.dart';
import 'package:clinaj/core/general_widgets/deals/rating_widget.dart';
import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final ReviewEntity review;
  const ReviewCard({Key? key, required this.review}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
    return Card(
        elevation: 0,
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(radius: 20),
              title: Text(
                '${review.customer.firstName} ${review.customer.lastName} . ${review.updatedAt.toString()}',
                style: primaryTextTheme.headline5,
              ),
              subtitle: RatingBuilder(
                ratingValue: review.rating,
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                review.message,
                style: primaryTextTheme.bodyText1,
              ),
            )
          ],
        ));
  }
}
