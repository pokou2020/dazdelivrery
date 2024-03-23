import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

import '../../../../gen/assets.gen.dart';
import '../../../theme/theme.dart';
import '../../login/login.dart';


class CodeLivreur2 extends ConsumerStatefulWidget {
  const CodeLivreur2({Key? key}) : super(key: key);

  @override
  _CodeLivreur2State createState() => _CodeLivreur2State();
}

class _CodeLivreur2State extends ConsumerState<CodeLivreur2> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 70,
               color: Color.fromARGB(255, 237, 247, 255),
              
              child: Row(
                children: [
                   Assets.images.biArrowLeft.image(),
               
                 
                  Text(
                    "Code de validation",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
            Gap(4.w),
            Center(
              child: Text(
                "Entrer le code à 4 chiffres recu du client pour ",
                style: TextStyle(
                  fontSize: 13.sp,
                ),
              ),
            ),
            Gap(4.w),
            Center(
              child: Text(
                "Valider la recuperation du colis",
                style: TextStyle(
                  fontSize: 13.sp,
                ),
              ),
            ),
            Gap(4.w),
            Center(
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
            ),
                   InkWell(
              onTap: () {
                _sendConfirmationCode();
              },
              child: Container(
                height: 50,
                
                width: MediaQuery.of(context).size.width/1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.green,
                 
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
                          text: "Valider",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
                   InkWell(
              onTap: () {
                _sendConfirmationCode();
              },
              child: Container(
                height: 50,
                
                width: MediaQuery.of(context).size.width/1.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.red
                  )
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
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
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
