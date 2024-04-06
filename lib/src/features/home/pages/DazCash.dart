import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../../gen/assets.gen.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../theme/color/app_colors.dart';
import '../../login/login.dart';
import '../home.dart';
import 'RecharcheDazCash.dart';
import 'TransfertDazCash.dart';
import 'drawer.dart';

class DazCash extends StatefulWidget {
  const DazCash({super.key});

  @override
  State<DazCash> createState() => _DazCashState();
}

class _DazCashState extends State<DazCash> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final double drawerWidth = MediaQuery.of(context).size.width * .8;

    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        backgroundColor: AppColors.grey2,
        title: const Text(
          'Daz Cash',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: AppColors.grey2,
                child: Column(
                  children: [
                    Container(
                      height: 40.w,
                      decoration: BoxDecoration(
                        color: Color(0xff253238),
                        borderRadius: BorderRadius.circular(2.w),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Total d'unités",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                          Gap(2.w),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Assets.images.laCoins
                                  .image(color: Colors.white, width: 7.w),
                              Gap(1.w),
                              Text(
                                "500",
                                style: GoogleFonts.poppins(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Gap(2.w),
                              Text(
                                "Daz Cash",
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            TransfertDazCash()));
                              },
                              child: Container(
                                height: 10.w,
                                width: MediaQuery.of(context).size.width / 2.5,
                                decoration: BoxDecoration(
                                  color: AppColors.green,
                                  borderRadius: BorderRadius.circular(5.w),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 2.w, horizontal: 4.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Assets.images.mingcuteTransferLine.svg(),
                                    Expanded(
                                      child: Text(
                                        "Transférer",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Gap(2.w),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RecharcheDazCash(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 10.w,
                                decoration: BoxDecoration(
                                  color: AppColors.green,
                                  borderRadius: BorderRadius.circular(5.w),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 2.w, horizontal: 4.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Assets.images.solarCircleTopUpBold.svg(),
                                    Expanded(
                                      child: Text(
                                        "Se recharger",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Gap(2.h),
              Text(
                "Historique recharges et transferts",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                ),
              ),
              Gap(2.h),
              Expanded(
                child: ListView.separated(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return DazCashItem(
                      index: index,
                    );
                  },
                  separatorBuilder: (context, index) => Gap(2.h),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
