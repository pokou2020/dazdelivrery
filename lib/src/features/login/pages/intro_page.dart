import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../gen/assets.gen.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../login/login.dart';

class IntroPage extends StatefulWidget {

  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(child: Assets.images.logoDaz.image(width: 30.w)),
              Gap(1.h),
              Text(
                "Delivery to A to Z",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                ),
                textAlign: TextAlign.center,
              ),
              Gap(1.h),
              Expanded(
                child: Center(
                  child: Assets.images.takeAwayPana.image(),
                ),
              ),
              Gap(1.h),
              SubmitButton(
                text: "Connexion",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                },
              ),
              Gap(2.h),
              const RegistrationText(),
              Gap(1.h),
            ],
          ),
        ),
      ),
    );
  }
}
