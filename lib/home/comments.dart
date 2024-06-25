import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:uitest/helper/assets.dart';
import 'package:uitest/helper/pallete.dart';
import 'package:uitest/helper/style_constants.dart';
import 'package:uitest/home/reaction_stats.dart';

class CommentsWidget extends StatefulWidget {
  const CommentsWidget({super.key});

  @override
  State<CommentsWidget> createState() => _CommentsWidgetState();
}

class _CommentsWidgetState extends State<CommentsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.w),
      child: Container(
        color: Pallete.black,
        child: Expanded(
          child: Column(
            children: [
              const CommentWidget(
                userName: "kiero_d",
                name: "kiero_d",
                img: CustomAssets.img3,
                comment: "Interesting Nicola that not one reply or tag on this #UX talent shout out in the 24hrs since your tweet here......🤔",
              ),
              13.verticalSpace,
              const CommentWidget(
                userName: "karenne",
                name: "karenne",
                img: CustomAssets.img2,
                comment: "Maybe I forgot the hashtags. #hiringux #designjobs #sydneyux #sydneydesigners #uxjobs",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CommentWidget extends StatelessWidget {
  final String img;
  final String name;
  final String userName;
  final String comment;

  const CommentWidget({
    super.key,
    required this.img,
    required this.name,
    required this.userName,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Row(
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 30.r,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  ),
                ),
                6.verticalSpace,
                Expanded(
                  child: Container(
                    width: 3.w,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.5),
                      borderRadius: BorderRadius.circular(2.r)
                    ),
                  ),
                )
              ],
            ),
            7.horizontalSpace,
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  5.verticalSpace,
                  Row(
                    children: [
                      Text(
                        name,
                        style: StyleConstants.style16500.copyWith(color: Pallete.blackWhite),
                      ),
                      5.horizontalSpace,
                      Text(
                        "@$userName . 2d",
                        style: StyleConstants.style12400.copyWith(color: Colors.white.withOpacity(.5)),
                      ),
                    ],
                  ),
                  8.verticalSpace,
                  RichText(
                    text: TextSpan(
                      text: "Replying to ",
                      style: StyleConstants.style14400.copyWith(color: Colors.white.withOpacity(.5)),
                      children: <TextSpan>[
                        TextSpan(
                          text: "@ahsen95",
                          style: StyleConstants.style14400.copyWith(
                            color: Pallete.tagColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  8.verticalSpace,
                  SizedBox(
                    width: double.maxFinite,
                    child: RichText(
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                      text: TextSpan(
                        children: _getTextSpans(comment),
                        style: StyleConstants.style16400.copyWith(color: Pallete.blackWhite, height: 1.6),
                      ),
                    ),
                  ),
                  12.verticalSpace,
                  Row(
                    children: [
                      const ReactionSection(img: CustomAssets.coment, number: "324"),
                      15.horizontalSpace,
                      const ReactionSection(img: CustomAssets.heart, number: "324"),
                    ],
                  ),
                  8.verticalSpace,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<TextSpan> _getTextSpans(String text) {
  final List<TextSpan> spans = [];
  final RegExp exp = RegExp(r"(#[a-zA-Z0-9_]+)");

  int start = 0;

  exp.allMatches(text).forEach((match) {
    if (match.start > start) {
      spans.add(TextSpan(text: text.substring(start, match.start), style: StyleConstants.style16400.copyWith(color: Pallete.blackWhite)));
    }

    spans.add(
      TextSpan(
        text: match.group(0),
        style: StyleConstants.style16400.copyWith(color: Pallete.tagColor),
      ),
    );

    start = match.end;
  });

  if (start < text.length) {
    spans.add(TextSpan(text: text.substring(start), style: StyleConstants.style16400.copyWith(color: Pallete.blackWhite)));
  }

  return spans;
}
