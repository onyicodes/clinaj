import 'package:clinaj/core/general_widgets/deals/deal_cover.dart';
import 'package:clinaj/core/general_widgets/deals/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DealShimmerCard extends StatelessWidget {
  const DealShimmerCard({
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
          children:  [
            const DealCover(detailsView: false, imageUrl: 'assets/images/deals/d1.jpeg' ,),
           const SizedBox(height: 2,),
            Container(height: 12, width: 150,color: Colors.grey.shade100,),
            const SizedBox(height: 2,),
            const RatingBuilder(ratingValue: 5,),
            const SizedBox(height: 2,),
            Container(height: 10, width: 80,color: Colors.grey.shade100,),
            const SizedBox(height: 2,),
            Container(height: 10, width: 150,color: Colors.grey.shade100,),
            const SizedBox(height: 2,),
            Container(height: 10, width: 40,color: Colors.grey.shade100,),
          ],
        ),
      ),
    );
  }
}
