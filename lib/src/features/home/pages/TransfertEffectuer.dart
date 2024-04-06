import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sizer/sizer.dart';

import '../home.dart';
import 'historique.dart';

class TransfertEffectuer extends StatefulWidget {
  const TransfertEffectuer({super.key});

  @override
  State<TransfertEffectuer> createState() => _TransfertEffectuerState();
}

class _TransfertEffectuerState extends State<TransfertEffectuer> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
              (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Transfert effectuée\navec succès!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}