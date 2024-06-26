import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uitest/helper/assets.dart';
import 'package:uitest/helper/pallete.dart';
import 'package:uitest/helper/style_constants.dart';

class ReactionStats extends StatefulWidget {
  const ReactionStats({super.key});

  @override
  State<ReactionStats> createState() => _ReactionStatsState();
}

class _ReactionStatsState extends State<ReactionStats> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ReactionSection(img: CustomAssets.coment, number: "324"),
          ReactionSection(img: CustomAssets.heart, number: "324"),
          ReactionSection(img: CustomAssets.show, number: "324"),
          ReactionSection(img: CustomAssets.botPng, number: "AI Chat"),
          ReactionSection(img: CustomAssets.download, number: ""),
        ],
      ),
    );
  }
}

class ReactionSection extends StatelessWidget {
  final String img;
  final String number;
  const ReactionSection({super.key, required this.img, required this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        img.endsWith(".png")
            ? Image.asset(
                img,
                height: 20.h,
              )
            : SvgPicture.asset(img),
        7.horizontalSpace,
        Text(
          number,
          style: StyleConstants.style14400.copyWith(color: Pallete.blackWhite),
        ),
      ],
    );
  }
}
