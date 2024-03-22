import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../gen/assets.gen.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../theme/color/app_colors.dart';
import '../../login/login.dart';
import '../home.dart';
import 'DazCash.dart';
import 'drawer.dart';

class Historique extends StatefulWidget {
  const Historique({super.key});

  @override
  State<Historique> createState() => _HistoriqueState();
}

class _HistoriqueState extends State<Historique> {
   GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
     final double drawerWidth = MediaQuery.of(context).size.width * .8;

    return Scaffold(
    key: _globalKey,
      drawer:Drawers(),

      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 70,
                color: Color.fromARGB(255, 237, 247, 255),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                     
                      Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: InkWell(
                                onTap: () =>
                                    _globalKey.currentState?.openDrawer(),
                                child: Assets.images.ciMenuAlt01.image())),
                  Text("Historique des livraisons",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20
                  ),
                  ),
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}