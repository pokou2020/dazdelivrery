import 'package:dazdelivery/src/common_widgets/button/button.dart';
import 'package:dazdelivery/src/features/home/pages/livraisonPage1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

import '../../../../gen/assets.gen.dart';
import '../../../theme/theme.dart';
import '../../login/login.dart';

class CodeLivraiseur1 extends ConsumerStatefulWidget {
  const CodeLivraiseur1({Key? key}) : super(key: key);

  @override
  _CodeLivraiseur1State createState() => _CodeLivraiseur1State();
}

class _CodeLivraiseur1State extends ConsumerState<CodeLivraiseur1> {
  //late SignupController _signupController;

  final defaultPinTheme = PinTheme(
    width: 15.w,
    height: 15.w,
    textStyle: TextStyle(
      fontSize: 16.sp,
      color: const Color.fromRGBO(30, 60, 87, 1),
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.grey,
          width: 0.5.w,
        ),
        borderRadius: BorderRadius.circular(2.w)),
  );

  @override
  void initState() {
    super.initState();
    /*_signupController = ref.read(signupControllerProvider);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _sendConfirmationCode();
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.grey2,
        centerTitle: true,
        title: const Text(
          'Code de validation',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Entrer le code à 4 chiffres reçu du client pour\nvalider la récuparation du colis.",
              style: TextStyle(
                fontSize: 13.sp,
              ),
              textAlign: TextAlign.center,
            ),
            Gap(2.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Center(
                child: Pinput(
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyDecorationWith(
                    border: const Border(
                      bottom: BorderSide(
                        color: AppColors.green,
                        width: 2,
                      ),
                    ),
                  ),
                  submittedPinTheme: defaultPinTheme.copyDecorationWith(
                    border: Border.all(
                      color: AppColors.green,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(4.w),
                  ),
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                  mainAxisAlignment: MainAxisAlignment.start,
                  onCompleted: (String code) {
                    Future.delayed(
                      const Duration(milliseconds: 500),
                      () {
                        _submit(code);
                      },
                    );
                  },
                ),
              ),
            ),
            Spacer(),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: OtpKey(
                            value: "1",
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: OtpKey(
                            value: "2",
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: OtpKey(
                            value: "3",
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.w),
                  Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: OtpKey(
                            value: "4",
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: OtpKey(
                            value: "5",
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: OtpKey(
                            value: "6",
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.w),
                  Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: OtpKey(
                            value: "7",
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: OtpKey(
                            value: "8",
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: OtpKey(
                            value: "9",
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.w),
                  Row(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Expanded(
                        child: Center(
                          child: OtpKey(
                            value: "0",
                            onTap: () {},
                          ),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: OtpDeleteKey(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SubmitButton(
              text: "Valider",
              onTap: () {
                Navigator.pop(context, true);
              },
            ),
            Gap(3.w),
            Container(
              height: 12.w,
              width: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color(0xffCE2C09),
                ),
              ),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Raleway',
                      fontSize: 12.sp,
                    ),
                    children: const [
                      TextSpan(
                        text: "Le client n'a pas recu le code",
                        style: TextStyle(
                          color: AppColors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _sendConfirmationCode() async {
    /*showLoadingDialog(context);
    var response = await _signupController.sendConfirmationCode();
    if (response.hasError) {
      showInfoDialog(context, message: response.message!);
      return;
    }*/
  }

  _submit(String code) async {
    /*showLoadingDialog(context);
    var response = await _signupController.validateConfirmationCode(code);
    Navigator.pop(context);
    if (response.hasError) {
      showInfoDialog(context, message: response.message!);
      return;
    }
    Navigator.pushNamed(context, CongratulationPage.name);*/
  }
}
