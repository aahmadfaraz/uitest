import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitest/helper/pallete.dart';
import 'package:uitest/helper/style_constants.dart';
import 'package:uitest/home/post.dart';

class PostsWidget extends StatefulWidget {
  const PostsWidget({super.key});

  @override
  State<PostsWidget> createState() => _PostsWidgetState();
}

class _PostsWidgetState extends State<PostsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.black,
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: Size(double.maxFinite, 1.h),
            child: Container(
              height: 1.h,
              color: Colors.white.withOpacity(.1),
            )),
        backgroundColor: Pallete.black,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            "Post",
            style: StyleConstants.style24700.copyWith(color: Pallete.blackWhite),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.w),
            child: Text(
              "+ Invite",
              style: StyleConstants.style16500.copyWith(color: Pallete.blackWhite),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          5.verticalSpace,
          const PostWidget(),
        ],
      ),
    );
  }
}
