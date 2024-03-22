import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'historique.dart';

class CoursEffectue extends StatefulWidget {
  const CoursEffectue({super.key});

  @override
  State<CoursEffectue> createState() => _CoursEffectueState();
}

class _CoursEffectueState extends State<CoursEffectue> {
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
            child: Center(child: Text("Course effectuée",
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