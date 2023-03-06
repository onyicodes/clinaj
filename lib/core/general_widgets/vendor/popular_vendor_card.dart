import 'package:clinaj/core/constants/general_constants.dart';
import 'package:clinaj/core/entities/vendors_entity.dart';
import 'package:clinaj/core/general_widgets/custom_list_space.dart';
import 'package:clinaj/core/general_widgets/vendor/rating_widget.dart';
import 'package:clinaj/core/general_widgets/vendor/vendor_cover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularVendorCard extends StatelessWidget {
  final VendorsEntity vendorsEntity;
  const PopularVendorCard({Key? key, required this.vendorsEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
    return Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VendorImageCover(
            detailsView: false,
            imageUrl: vendorsEntity.photo,
          ),
          CustomListSpacing(
              isVertical: true,
              spacingValue: ListSpacingValue.spacingH8.value),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              vendorsEntity.fullName,
              maxLines: 1,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: primaryTextTheme.displaySmall,
            ),
          ),
          CustomListSpacing(
              isVertical: true,
              spacingValue: ListSpacingValue.spacingH8.value),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                SvgPicture.asset('assets/svg/icons/deal_map_icons.svg'),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  vendorsEntity.location.address,
                  style: primaryTextTheme.bodyLarge!.copyWith(
                      decoration: TextDecoration.underline,
                      decorationThickness: 3),
                ),
              ],
            ),
          ),
         CustomListSpacing(
              isVertical: true,
              spacingValue: ListSpacingValue.spacingH8.value),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              height: 30,
              width: 200,
              child: Text(
                vendorsEntity.workTitle,
                maxLines: 1,
                softWrap: true,
                overflow: TextOverflow.fade,
                style: primaryTextTheme.bodyLarge,
              ),
            ),
          ),
          CustomListSpacing(
              isVertical: true,
              spacingValue: ListSpacingValue.spacingH8.value),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: RatingBuilder(
              ratingValue: vendorsEntity.ratings,
            ),
          )
        ],
      ),
    );
  }
}
