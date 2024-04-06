import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../theme/theme.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final Widget? icon;
  final Color? color;
  final EdgeInsets? padding;

  const SubmitButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.icon,
    this.color,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color ?? AppColors.green,
          borderRadius: BorderRadius.circular(2.w),
        ),
        padding: padding ?? EdgeInsets.all(4.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Row(
                children: [
                  icon!,
                  Gap(4.w),
                ],
              ),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
