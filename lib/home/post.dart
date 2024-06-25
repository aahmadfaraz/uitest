import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitest/helper/assets.dart';
import 'package:uitest/helper/pallete.dart';
import 'package:uitest/helper/style_constants.dart';
import 'package:uitest/home/comments.dart';
import 'package:uitest/home/voice_message.dart';
import 'package:uitest/home/reaction_stats.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Pallete.black,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.verticalSpace,
            Row(
              children: [
                CircleAvatar(
                  radius: 27.r,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    CustomAssets.img1,
                    fit: BoxFit.cover,
                  ),
                ),
                15.horizontalSpace,
                Text(
                  "Joshua Lawrence",
                  style: StyleConstants.style16500.copyWith(color: Pallete.blackWhite),
                ),
                6.horizontalSpace,
                Text(
                  "@joshua95 . 8h",
                  style: StyleConstants.style12400.copyWith(color: Colors.white.withOpacity(.5)),
                ),
              ],
            ),
            15.verticalSpace,
            Text(
              "Lecture about AI Techonology",
              style: StyleConstants.style16400.copyWith(color: Pallete.blackWhite),
            ),
            5.verticalSpace,
            Text(
              "By : Muhammed",
              style: StyleConstants.style16400.copyWith(color: Pallete.blackWhite),
            ),
            5.verticalSpace,
            const VoiceMessage(),
            8.verticalSpace,
            const ReactionStats(),
            25.verticalSpace,
            const CommentsWidget(),
          ],
        ),
      ),
    );
  }
}
