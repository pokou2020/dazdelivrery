
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/theme.dart';
import '../login.dart';

class RegistrationText extends StatelessWidget {
  const RegistrationText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RegistrationPage()));
      },
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Raleway',
            fontSize: 12.sp,
          ),
          children: [
            TextSpan(text: "Pas encore de compte ? "),
            TextSpan(
              text: "Inscrivez-vous",
              style: TextStyle(color: AppColors.green),
            ),
          ],
        ),
      ),
    );
  }
}
