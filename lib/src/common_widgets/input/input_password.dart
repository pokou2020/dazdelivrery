import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../gen/assets.gen.dart';
import '../common_widgets.dart';

class InputPassword extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool obscureText;
  final String? validator;
  final String? Function(String?)? customValidator;

  const InputPassword(
      {Key? key,
      this.controller,
      this.hintText,
      this.obscureText = false,
      this.validator,
      this.customValidator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputText(
      controller: controller,
      obscureText: obscureText,
      suffixIcon: Padding(
        padding: EdgeInsets.all(3.w),
        child: Assets.images.clarityEye.image(
          width: 1.w,
          height: 1.w,
        ),
      ),
      hintText: hintText,
      validator: validator,
      customValidator: customValidator,
    );
  }
}
