// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../common_widgets/common_widgets.dart';
import '../../../theme/theme.dart';
import '../login.dart';

class RegistrationPage extends ConsumerStatefulWidget {
  static const name = "/registration";

  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends ConsumerState<RegistrationPage> {
  //late SignupController _signupController;

  //final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _phoneCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();
  final TextEditingController _confirmPasswordCtrl = TextEditingController();

  @override
  void initState() {
    //_signupController = ref.read(signupControllerProvider);
    //_signupController.initUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Créer votre compte",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                    Gap(1.h),
                    Text(
                      "Plein de surprises vous attendent sur daz",
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                    Gap(3.h),
                    InputText(
                      controller: _emailCtrl,
                      hintText: "Email",
                      validator: "L'email est requis",
                    ),
                    Gap(2.h),
                    InputText(
                      controller: _phoneCtrl,
                      hintText: "Téléphone",
                      validator: "Le téléphone est requis",
                      textInputType: TextInputType.phone,
                    ),
                    Gap(2.h),
                    InputPassword(
                      controller: _passwordCtrl,
                      hintText: "Mot de passe",
                      obscureText: true,
                      validator: "Le mot de passe est requis",
                    ),
                    Gap(2.h),
                    InputPassword(
                      controller: _confirmPasswordCtrl,
                      hintText: "Confirmation du mot de passe",
                      obscureText: true,
                      customValidator: (value) {
                        if (value == null || value.isEmpty) {
                          return "La confirmation du mot de passe est requis";
                        }
                        if (value != _passwordCtrl.text) {
                          return "La confirmation est incorrect";
                        }
                        return null;
                      },
                    ),
                    Gap(3.h),
                    SubmitButton(
                      text: "S'inscrire",
                      onTap: () {
                        /*if (_formKey.currentState!.validate()) {
                          _signupController.updateUser(
                            email: _emailCtrl.text,
                            phone: _phoneCtrl.text,
                            password: _passwordCtrl.text,
                          );
                          _submit();
                        }*/
                        _submit();
                      },
                    ),
                    Gap(2.h),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Raleway',
                          fontSize: 12.sp,
                        ),
                        children: const [
                          TextSpan(text: "Vous avez déjà un compte ? "),
                          TextSpan(
                            text: "Connectez-vous",
                            style: TextStyle(color: AppColors.green),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const UserAgreementText(),
            ],
          ),
        ),
      ),
    );
  }

  void _submit() async {
    /*var response = await _signupController.register();
    Navigator.pop(context);
    if (response.hasError) {
      showInfoDialog(context, message: response.message!);
      return;
    }
    Navigator.pushNamed(
      context,
      PhoneVerificationPage.name,
    );*/
    Navigator.push(context, MaterialPageRoute(builder: (context) => const PhoneVerificationPage()));
  }
}
