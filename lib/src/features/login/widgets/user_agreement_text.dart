import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class UserAgreementText extends StatelessWidget {
  const UserAgreementText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          fontFamily: 'Raleway',
          fontSize: 12.sp,
          color: Colors.black,
        ),
        children: [
          TextSpan(text: "En continuant, vous acceptez nos "),
          TextSpan(
            text: "termes et conditions, notre politique de confidentialité",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }
}
