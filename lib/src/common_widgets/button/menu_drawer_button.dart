import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../gen/assets.gen.dart';

class MenuDrawerButton extends StatelessWidget {
  final BuildContext cont;

  const MenuDrawerButton({Key? key, required this.cont}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.w),
      child: Assets.images.ciMenuAlt01.image(width: 8.w),
    );
  }
}
