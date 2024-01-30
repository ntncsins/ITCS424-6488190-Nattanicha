import 'package:flutter/material.dart';
import 'package:ntnc_s_application5/core/app_export.dart';
import 'package:ntnc_s_application5/widgets/custom_icon_button.dart';

class NewsXdScreen extends StatelessWidget {
  const NewsXdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: SizeUtils.height,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  height: 40.v,
                                  width: 143.h,
                                  margin: EdgeInsets.only(top: 25.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.blueGray100E5,
                                      borderRadius:
                                          BorderRadius.circular(20.h)))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 32.v),
                                  decoration: AppDecoration.fillGray900,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(height: 53.v),
                                        _buildMobileRow(context),
                                        SizedBox(height: 17.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: 300.h,
                                                margin: EdgeInsets.only(
                                                    left: 29.h, right: 63.h),
                                                child: Text(
                                                    "Unlocking Job Opportunities for Non-Business Majors Students",
                                                    maxLines: 4,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: theme.textTheme
                                                        .displaySmall))),
                                        SizedBox(height: 6.v),
                                        _buildMahidolUniversityStack(context),
                                        SizedBox(height: 31.v),
                                        Container(
                                            height: 80.adaptSize,
                                            width: 80.adaptSize,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 24.h,
                                                vertical: 10.v),
                                            decoration: AppDecoration
                                                .fillGray100
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder40),
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRightArrow3,
                                                height: 59.v,
                                                width: 30.h,
                                                alignment: Alignment.center,
                                                onTap: () {
                                                  onTapImgRightArrowThree(
                                                      context);
                                                }))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                  height: 48.adaptSize,
                                  width: 48.adaptSize,
                                  margin: EdgeInsets.only(
                                      right: 13.h, bottom: 157.v),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgMobile,
                                            height: 48.adaptSize,
                                            width: 48.adaptSize,
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgBookmark3,
                                            height: 20.v,
                                            width: 19.h,
                                            alignment: Alignment.center)
                                      ])))
                        ]))))));
  }

  /// Section Widget
  Widget _buildMobileRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 29.h, right: 19.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 26.h, vertical: 21.v),
                  decoration: AppDecoration.fillDeepOrange
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder37),
                  child: Text("M",
                      style: CustomTextStyles.headlineSmallWhiteA700)),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: SizedBox(
                      height: 74.v,
                      child: VerticalDivider(
                          width: 3.h, thickness: 3.v, indent: 3.h))),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, top: 11.v, bottom: 13.v),
                  child: Column(children: [
                    Text("Jan 17, 2024",
                        style: CustomTextStyles.bodyLargeWhiteA70002),
                    SizedBox(height: 8.v),
                    Text("MUIC NEWS",
                        style: theme.textTheme.bodyLarge!
                            .copyWith(decoration: TextDecoration.underline))
                  ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 21.v),
                  child: CustomIconButton(
                      height: 39.adaptSize,
                      width: 39.adaptSize,
                      child:
                          CustomImageView(imagePath: ImageConstant.imgMobile)))
            ]));
  }

  /// Section Widget
  Widget _buildMahidolUniversityStack(BuildContext context) {
    return SizedBox(
        height: 341.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  width: 334.h,
                  child: Text(
                      "Mahidol University International College organized an event for 55 non-business majors to prepare for the upcoming Job Fair, featuring guest speaker Richard Jones on job application strategies.",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      style:
                          theme.textTheme.bodyMedium!.copyWith(height: 2.14)))),
          CustomImageView(
              imagePath: ImageConstant.imgImage6,
              height: 212.v,
              width: 393.h,
              alignment: Alignment.bottomCenter)
        ]));
  }

  /// Navigates to the storyContainerScreen when the action is triggered.
  onTapImgRightArrowThree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.storyContainerScreen);
  }
}
