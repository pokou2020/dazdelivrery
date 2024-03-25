import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../gen/assets.gen.dart';

class DrawerMenuItem extends StatelessWidget {
  final AssetGenImage icon;
  final String text;
  final Function()? onTap;

  const DrawerMenuItem({
    Key? key,
    required this.icon,
    required this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(onTap != null) onTap!();
      },
      child: Row(
        children: [
          icon.image(width: 5.w),
          Gap(3.w),
          Text(
            text,
            
            style: TextStyle(
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
