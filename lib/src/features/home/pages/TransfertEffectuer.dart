import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'historique.dart';

class TransfertEffectuer extends StatefulWidget {
  const TransfertEffectuer({super.key});

  @override
  State<TransfertEffectuer> createState() => _TransfertEffectuerState();
}

class _TransfertEffectuerState extends State<TransfertEffectuer> {
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
            child: Center(child: Text("Transfert effectuée",
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