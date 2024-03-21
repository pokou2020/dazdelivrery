import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/theme.dart';

class OtpDeleteKey extends StatelessWidget {
  const OtpDeleteKey({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(2.w),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 4.5.w,
        horizontal: 5.w,
      ),
      child: Icon(
        Icons.backspace_outlined,
        size: 6.w,
      ),
    );
  }
}
