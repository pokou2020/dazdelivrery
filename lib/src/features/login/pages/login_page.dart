import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../gen/assets.gen.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../home/home.dart';
import '../login.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  // late LoginController _loginController;

  final TextEditingController _passwordCtrl = TextEditingController();
  final TextEditingController _loginCtrl = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    //_loginController = ref.read(loginControllerProvider);
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Faites une autre expérience de livraison",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),
                      Gap(2.h),
                      Text(
                        "Prise en charge de tout type de colis",
                        style: TextStyle(
                          fontSize: 14.sp,
                        ),
                      ),
                      Gap(4.h),
                      InputText(
                        controller: _loginCtrl,
                        hintText: "Email",
                        validator: "L'email est requis",
                      ),
                      Gap(2.h),
                      InputPassword(
                        controller: _passwordCtrl,
                        hintText: "Mot de passe",
                        obscureText: true,
                        validator: "Le mot de passe est requis",
                      ),
                      Gap(3.h),
                      Text(
                        "Mot de passe oublié ?",
                        style: TextStyle(
                          fontSize: 12.sp,
                        ),
                      ),
                      Gap(4.h),
                      SubmitButton(
                        text: "Se connecter",
                        onTap: () {
                          /*if (_formKey.currentState!.validate()) {
                            _submit();
                          }*/
                          _submit();
                        },
                      ),
                      Gap(2.h),
                      const RegistrationText(),
                    ],
                  ),
                ),
              ),
              const UserAgreementText(),
            ],
          ),
        ),
      ),
    );
  }

  _submit() async {
    /*showLoadingDialog(context);
    var response =
        await _loginController.login(_loginCtrl.text, _passwordCtrl.text);
    Navigator.pop(context);
    if (response.hasError) {
      showInfoDialog(context, message: response.message!);
      return;
    }
    Navigator.of(context).pushReplacementNamed(HomePage.name);*/
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomePage()), (route) => false);
  }
}
