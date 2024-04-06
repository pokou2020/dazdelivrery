import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../theme/color/app_colors.dart';
import 'TransfertEffectuer.dart';

class TransfertDazCash extends StatefulWidget {
  const TransfertDazCash({super.key});

  @override
  State<TransfertDazCash> createState() => _TransfertDazCashState();
}

class _TransfertDazCashState extends State<TransfertDazCash> {
  @override
  Widget build(BuildContext context) {
    final double drawerWidth = MediaQuery.of(context).size.width * .8;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.grey2,
        title: const Text(
          'Transfert',
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
                        "Remplissez les champs ci-dessous pour\ntransférer votre compte Daz Cash",
                        style: TextStyle(
                          fontSize: 12.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Gap(10.w),
                      InputText(
                        // controller: _loginCtrl,
                        hintText: "Entrer le code livreur",
                        validator: "L'email est requis",
                      ),
                      Gap(2.h),
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
                text: "Valider le transfert",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TransfertEffectuer(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
