import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uitest/helper/assets.dart';
import 'package:uitest/helper/pallete.dart';
import 'package:uitest/helper/style_constants.dart';
import 'package:uitest/home/empty_page.dart';
import 'package:uitest/home/posts.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int selectedIndex = 2;
  List<Widget> pages = [
    const EmptyPage(msg: "Home"),
    const EmptyPage(msg: "Groups"),
    const PostsWidget(),
    const EmptyPage(msg: "Messages"),
    const EmptyPage(msg: "Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.black,
      body: pages.elementAt(selectedIndex),
      bottomNavigationBar: Container(
        height: 92.h,
        color: Colors.white.withOpacity(.5),
        child: SizedBox(
          height: 90.h,
          child: BottomNavigationBar(
            fixedColor: Pallete.black,
            currentIndex: selectedIndex,
            elevation: 0,
            showSelectedLabels: false,
            unselectedLabelStyle: StyleConstants.style12400.copyWith(color: Pallete.blackWhite),
            showUnselectedLabels: true,
            backgroundColor: Pallete.black,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                backgroundColor: Pallete.black,
                label: "Home",
                icon: selectedIndex == 0
                    ? Container(
                        padding: EdgeInsets.all(15.h),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(.1),
                        ),
                        child: SvgPicture.asset(
                          CustomAssets.home,
                          height: 23.h,
                          color: Colors.white,
                        ),
                      )
                    : SvgPicture.asset(
                        CustomAssets.home,
                        height: 23.h,
                        color: Colors.white,
                      ),
              ),
              BottomNavigationBarItem(
                backgroundColor: Pallete.black,
                label: "Groups",
                icon: selectedIndex == 1
                    ? Container(
                        padding: EdgeInsets.all(15.h),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(.1),
                        ),
                        child: SvgPicture.asset(
                          CustomAssets.user,
                          height: 23.h,
                          color: Colors.white,
                        ),
                      )
                    : SvgPicture.asset(
                        CustomAssets.user,
                        height: 23.h,
                        color: Colors.white,
                      ),
              ),
              BottomNavigationBarItem(
                backgroundColor: Pallete.black,
                label: "Tools",
                icon: selectedIndex == 2
                    ? Container(
                        padding: EdgeInsets.all(15.h),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(.1),
                        ),
                        child: SvgPicture.asset(
                          CustomAssets.categ,
                          height: 23.h,
                          color: Colors.white,
                        ),
                      )
                    : SvgPicture.asset(
                        CustomAssets.categ,
                        height: 23.h,
                        color: Colors.white,
                      ),
              ),
              BottomNavigationBarItem(
                backgroundColor: Pallete.black,
                label: "Messages",
                icon: selectedIndex == 3
                    ? Container(
                        padding: EdgeInsets.all(15.h),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(.1),
                        ),
                        child: SvgPicture.asset(
                          CustomAssets.dm,
                          height: 23.h,
                          color: Colors.white,
                        ),
                      )
                    : SvgPicture.asset(
                        CustomAssets.dm,
                        height: 23.h,
                        color: Colors.white,
                      ),
              ),
              BottomNavigationBarItem(
                backgroundColor: Pallete.black,
                label: "Profile",
                icon: selectedIndex == 4
                    ? Container(
                        padding: EdgeInsets.all(15.h),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(.1),
                        ),
                        child: SvgPicture.asset(
                          CustomAssets.user,
                          height: 23.h,
                          color: Colors.white,
                        ),
                      )
                    : SvgPicture.asset(
                        CustomAssets.user,
                        height: 23.h,
                        color: Colors.white,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
