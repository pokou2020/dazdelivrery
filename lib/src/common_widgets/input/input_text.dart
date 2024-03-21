import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../theme/theme.dart';

class InputText extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final bool enabled;
  final String? validator;
  final TextInputType? textInputType;
  final String? Function(String?)? customValidator;
  final int? maxLength;
  final bool readOnly;
  final Function(String)? onChanged;

  const InputText({
    Key? key,
    this.controller,
    this.hintText,
    this.obscureText = false,
    this.suffixIcon,
    this.enabled = true,
    this.validator,
    this.textInputType,
    this.customValidator,
    this.maxLength,
    this.readOnly = false,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(left: 4.w),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          suffixIcon: suffixIcon,
        ),
        keyboardType: textInputType,
        enabled: enabled,
        readOnly: readOnly,
        maxLength: maxLength,
        validator: customValidator ?? (validator != null ? (value) => (value == null || value.isEmpty) ? validator : null : null),
        buildCounter: (BuildContext context, {required int currentLength, int? maxLength, required bool isFocused}) => null,
      ),
    );
  }
}
