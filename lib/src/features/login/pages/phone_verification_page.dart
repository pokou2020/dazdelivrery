import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/theme.dart';
import '../login.dart';

class PhoneVerificationPage extends ConsumerStatefulWidget {
  const PhoneVerificationPage({Key? key}) : super(key: key);

  @override
  _PhoneVerificationPageState createState() => _PhoneVerificationPageState();
}

class _PhoneVerificationPageState extends ConsumerState<PhoneVerificationPage> {
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Vérification du numéro de\ntéléphone",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
              Gap(4.w),
              Text(
                "Entrer le code à 4 chiffres que vous recevrez par sms sur votre numéro",
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
              Gap(4.w),
              Text(
                "Entrer le code reçu par sms",
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
              Gap(4.w),
              Pinput(
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
              Gap(4.w),
              InkWell(
                onTap: () {
                  _sendConfirmationCode();
                },
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Raleway',
                      fontSize: 12.sp,
                    ),
                    children: const [
                      TextSpan(text: "Vous n'avez pas reçu le code ? "),
                      TextSpan(
                        text: "Renvoyez",
                        style: TextStyle(color: AppColors.green),
                      ),
                    ],
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
                    SizedBox(height: 6.w),
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
                    SizedBox(height: 6.w),
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
                    SizedBox(height: 6.w),
                    Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Expanded(
                          child: Center(
                            child: OtpKey(
                              value: "0",
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const CongratulationPage()));
                              },
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
              )
            ],
          ),
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
