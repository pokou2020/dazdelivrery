import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../gen/assets.gen.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../theme/color/app_colors.dart';
import '../../login/login.dart';
import '../home.dart';
import 'RechargeEffectuer.dart';
import 'TransfertEffectuer.dart';
import 'drawer.dart';

class RecharcheDazCash extends StatefulWidget {
  const RecharcheDazCash({super.key});

  @override
  State<RecharcheDazCash> createState() => _RecharcheDazCashState();
}

class _RecharcheDazCashState extends State<RecharcheDazCash> {
  @override
  Widget build(BuildContext context) {
    final double drawerWidth = MediaQuery.of(context).size.width * .8;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.grey2,
        title: const Text(
          'Recharge',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Remplissez les champs ci-dessous pour\nrecharger votre compte Daz Cash",
                        style: TextStyle(
                          fontSize: 12.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Gap(10.w),
                      InputText(
                        suffixIcon: Padding(
                          padding: EdgeInsets.all(3.w),
                          child: Text("Daz Cash"),
                        ),
                        hintText: "0",
                      ),
                    ],
                  ),
                ),
              ),
              SubmitButton(
                text: "Confirmer la recharge",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RechargeEffectuer()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
