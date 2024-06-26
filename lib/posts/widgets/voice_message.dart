import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uitest/helper/assets.dart';
import 'package:uitest/helper/pallete.dart';
import 'package:uitest/helper/style_constants.dart';

class VoiceMessage extends StatefulWidget {
  const VoiceMessage({
    super.key,
  });

  @override
  State<VoiceMessage> createState() => _VoiceMessageState();
}

class _VoiceMessageState extends State<VoiceMessage> {
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      child: Container(
        height: 85.h,
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.1),
          borderRadius: BorderRadius.circular(82.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isPlaying = !isPlaying;
                });
              },
              child: Container(
                height: 60.h,
                width: 60.w,
                decoration: const BoxDecoration(color: Pallete.blackWhite, shape: BoxShape.circle),
                child: Icon(
                  isPlaying ? Icons.pause : Icons.play_arrow,
                  color: Colors.black,
                  size: 35.h,
                ),
              ),
            ),
            8.horizontalSpace,
            Text(
              "00:15",
              style: StyleConstants.style12400.copyWith(color: Pallete.blackWhite),
            ),
            8.horizontalSpace,
            Expanded(
              child: SizedBox(
                child: SvgPicture.asset(
                  CustomAssets.voice,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            5.horizontalSpace,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              height: 23.h,
              decoration: BoxDecoration(color: Pallete.blackWhite, borderRadius: BorderRadius.circular(50.r)),
              child: Center(
                child: Text(
                  "x1.5",
                  style: StyleConstants.style12400,
                ),
              ),
            ),
            5.horizontalSpace,
          ],
        ),
      ),
    );
  }
}
