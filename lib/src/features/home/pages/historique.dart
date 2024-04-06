import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../../gen/assets.gen.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../theme/color/app_colors.dart';
import '../../delivery/delivery.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.grey2,
        title: const Text(
          'Historique des livraisons',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(4.w),
        child: ListView.separated(
          itemCount: 3,
          itemBuilder: (context, index) {
            return DeliveryHistoricAmountItem(
              index: index,
            );
          },
          separatorBuilder: (context, index) => Gap(2.h),
        ),
      ),
    );
  }
}
