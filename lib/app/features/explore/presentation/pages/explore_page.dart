import 'package:clinaj/app/features/explore/presentation/controllers/explore_controller.dart';
import 'package:clinaj/app/features/explore/presentation/widgets/explore_app_bar.dart';
import 'package:clinaj/core/constants/assets_constants.dart';
import 'package:clinaj/core/constants/general_constants.dart';
import 'package:clinaj/core/general_widgets/custom_list_space.dart';
import 'package:clinaj/core/general_widgets/vendor/popular_vendor_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExplorePage extends GetView<ExploreController> {
  ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsConstants.clinajBg),
          fit: BoxFit.fill,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(alignment: Alignment.center, child: ExploreAppBar()),
            CustomListSpacing(
                isVertical: true,
                spacingValue: ListSpacingValue.spacingV24.value),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Live Vendors',
                style: primaryTextTheme.displaySmall,
              ),
            ),
            CustomListSpacing(
                isVertical: true,
                spacingValue: ListSpacingValue.spacingV16.value),
            GetX<ExploreController>(builder: (_) {
              return SizedBox(
                height: 300,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: _.popularVendorsEntityList.length,
                    itemBuilder: ((context, index) {
                      return PopularVendorCard(
                          vendorsEntity: _.popularVendorsEntityList[index]);
                    })),
              );
            }),
            CustomListSpacing(
                isVertical: true,
                spacingValue: ListSpacingValue.spacingV54.value),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Popular Vendors',
                style: primaryTextTheme.displaySmall,
              ),
            ),
            CustomListSpacing(
                isVertical: true,
                spacingValue: ListSpacingValue.spacingV16.value),
            GetX<ExploreController>(builder: (_) {
              return SizedBox(
                height: 300,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: _.popularVendorsEntityList.length,
                    itemBuilder: ((context, index) {
                      return PopularVendorCard(
                          vendorsEntity: _.popularVendorsEntityList[index]);
                    })),
              );
            }),
            CustomListSpacing(
                isVertical: true,
                spacingValue: ListSpacingValue.spacingV54.value),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Featured Vendors',
                style: primaryTextTheme.displaySmall,
              ),
            ),
            CustomListSpacing(
                isVertical: true,
                spacingValue: ListSpacingValue.spacingV16.value),
            GetX<ExploreController>(builder: (_) {
              return SizedBox(
                height: 320,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: _.popularVendorsEntityList.length,
                    itemBuilder: ((context, index) {
                      return PopularVendorCard(
                          vendorsEntity: _.popularVendorsEntityList[index]);
                    })),
              );
            })
          ],
        ),
      ),
    );
  }
}
