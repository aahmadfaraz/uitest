import 'package:flutter/material.dart';
import 'package:uitest/helper/pallete.dart';
import 'package:uitest/helper/style_constants.dart';

class EmptyPage extends StatelessWidget {
  final String msg;
  const EmptyPage({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.black,
      body: Align(
        alignment: Alignment.center,
        child: Text(
          msg,
          textAlign: TextAlign.center,
          style: StyleConstants.style36700.copyWith(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
