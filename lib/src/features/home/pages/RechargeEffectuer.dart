import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'historique.dart';

class RechargeEffectuer extends StatefulWidget {
  const RechargeEffectuer({super.key});

  @override
  State<RechargeEffectuer> createState() => _RechargeEffectuerState();
}

class _RechargeEffectuerState extends State<RechargeEffectuer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Historique()));
            },
            child: Center(child: Text("Recharge effectuée",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
            )),
          ),
          Center(child: Text("avec succès!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
          ))
        ],
      ),
    );
  }
}