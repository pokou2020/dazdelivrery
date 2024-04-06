import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dazdelivery/src/features/home/pages/ramassage_commande.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sizer/sizer.dart';

import '../../../../gen/assets.gen.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../data/data.dart';
import '../../../theme/theme.dart';
import '../../delivery/delivery.dart';
import '../../login/login.dart';
import '../home.dart';
import 'drawer.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final Completer<GoogleMapController> _completer = Completer();
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  static CameraPosition _cameraPosition = CameraPosition(
    target: LatLng(5.3500466318116935, -4.035610431394458),
    zoom: 14,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: Drawers(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/tracking.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.all(4.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 12.w,
                        width: 12.w,
                        padding: EdgeInsets.all(1.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                          onTap: () => _globalKey.currentState?.openDrawer(),
                          child: Assets.images.ciMenuAlt01.image(width: 5.w),
                        ),
                      ),
                      Gap(10.w),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            showInfoDialog(
                              context,
                              message: "Se déconnecter ?",
                              positiveLabel: "OUI",
                              negativeLabel: "NON",
                              positiveCallBack: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                    ),
                                    (route) => false);
                              },
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 253, 171, 47),
                              borderRadius: BorderRadius.circular(1.w),
                            ),
                            padding: EdgeInsets.all(4.w),
                            child: Center(
                              child: Text(
                                'Se déconnecter',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.w),
                      topRight: Radius.circular(5.w),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      InkWell(
                        onTap: _showDeliveryRequest,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 237, 247, 255),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.w),
                              topRight: Radius.circular(5.w),
                            ),
                          ),
                          padding: EdgeInsets.all(4.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Vous êtes en ligne",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                ),
                              ),
                              Gap(2.w),
                              Container(
                                width: 4.w,
                                height: 4.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffC6FDC4),
                                ),
                                padding: EdgeInsets.all(1.w),
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff098B05),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(6.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "Recette du jour",
                              textAlign: TextAlign.center,
                            ),
                            Gap(1.h),
                            Center(
                              child: Text(
                                "8 500 FCFA",
                                style: GoogleFonts.poppins(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Gap(1.h),
                            Text(
                              "Consulter ses gains",
                              style: TextStyle(
                                color: AppColors.green,
                                decoration: TextDecoration.underline,
                                fontSize: 12.sp,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              /*Container(
                color: Colors.black,
              ),*/
            ],
          ),
        ),
      ),
    );
  }

  void _showDeliveryRequest() {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          content: ClipRRect(
            borderRadius: BorderRadius.circular(5.w),
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 237, 247, 255),
                    ),
                    padding: EdgeInsets.all(4.w),
                    child: Center(
                      child: Text(
                        "Proposition de course",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.w),
                    child: Column(
                      children: [
                        Text(
                          "Adresse de récupération",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(1.h),
                        Text(
                          "Angré 7e tranche non loin du maquis bluethooth",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      color: AppColors.green,
                      padding: EdgeInsets.all(4.w),
                      child: Center(
                        child: Text(
                          "Accepter",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        _confirmDeclineRequest();
                      },
                      child: Text(
                        "Décliner",
                        style: TextStyle(
                          color: AppColors.orange,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _confirmDeclineRequest() {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          content: ClipRRect(
            borderRadius: BorderRadius.circular(5.w),
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 237, 247, 255),
                    ),
                    padding: EdgeInsets.all(4.w),
                    child: Center(
                      child: Text(
                        "Vous pouvez toujours accepter la course",
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.w),
                    child: Column(
                      children: [
                        Text(
                          "Adresse de récupération",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(1.h),
                        Text(
                          "Angré 7e tranche non loin du maquis bluethooth",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      _showAcceptDeliveryRequest();
                    },
                    child: Container(
                      color: AppColors.green,
                      padding: EdgeInsets.all(4.w),
                      child: Center(
                        child: Text(
                          "Prendre la course",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Confirmer l'annulation",
                        style: TextStyle(
                          color: AppColors.orange,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _showAcceptDeliveryRequest() {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          content: ClipRRect(
            borderRadius: BorderRadius.circular(5.w),
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 237, 247, 255),
                    ),
                    padding: EdgeInsets.all(4.w),
                    child: Center(
                      child: Text(
                        "Course acceptée",
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.w),
                    child: Column(
                      children: [
                        Text(
                          "Adresse de récupération",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(1.h),
                        Text(
                          "Angré 7e tranche non loin du maquis bluethooth",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(2.h),
                        Text(
                          "Prix de la course",
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(2.h),
                        Text(
                          "8 500 FCFA",
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pop(context);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => RammassageCommande()));
    });
  }
}
