import 'package:clinaj/core/general_widgets/deals/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ReviewsCardLoading extends StatelessWidget {
  const ReviewsCardLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: const CircleAvatar(radius: 20),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 10,
                    width: 80,
                    color: Colors.grey.shade100,
                  ),
                  Container(
                    height: 10,
                    width: 80,
                    color: Colors.grey.shade100,
                  ),
                ],
              ),
              subtitle: const RatingBuilder(
                ratingValue: 5.0,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              height: 10,
              width: 300,
              color: Colors.grey.shade100,
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              height: 10,
              width: 250,
              color: Colors.grey.shade100,
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              height: 10,
              width: 100,
              color: Colors.grey.shade100,
            ),
          ],
        ),
      ),
    );
  }
}
