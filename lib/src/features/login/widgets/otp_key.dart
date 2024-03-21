import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/theme.dart';

class OtpKey extends StatelessWidget {
  final String value;
  final Function()? onTap;

  const OtpKey({
    super.key,
    required this.value,
    this.onTap,
  });


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(2.w),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 4.w,
          horizontal: 6.w,
        ),
        child: Text(
          value,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
