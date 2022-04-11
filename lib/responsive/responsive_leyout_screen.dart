import 'package:flutter/material.dart';
import 'package:insta_clone/utils/dimensions.dart';

class ResponsiveLeyout extends StatelessWidget {
  final Widget webscreenLayout;
  final Widget mobilescreenLayout;
  const ResponsiveLeyout({
    Key? key,
    required this.webscreenLayout,
    required this.mobilescreenLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          //web screen
          return webscreenLayout;
        }
        //mobile screen
        return mobilescreenLayout;
      },
    );
  }
}
