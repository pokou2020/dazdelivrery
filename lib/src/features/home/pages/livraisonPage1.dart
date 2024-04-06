import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dazdelivery/src/features/home/pages/coursEffectu%C3%A9e.dart';
import 'package:dazdelivery/src/features/home/pages/livraisonPage2.dart';
import 'package:dazdelivery/src/features/home/pages/rammassage_commandePage2..dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sizer/sizer.dart';

import '../../../../gen/assets.gen.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../data/data.dart';
import '../../../theme/theme.dart';
import '../../delivery/delivery.dart';
import '../../login/login.dart';
import '../home.dart';
import 'CodeLivraiseur.dart';
import 'drawer.dart';

class LivraisonPage1 extends ConsumerStatefulWidget {
  const LivraisonPage1({Key? key}) : super(key: key);

  @override
  _LivraisonPage1State createState() => _LivraisonPage1State();
}

class _LivraisonPage1State extends ConsumerState<LivraisonPage1> {
  //late HomeController _homeController;
  //late User _user;
  final Completer<GoogleMapController> _completer = Completer();
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  static CameraPosition _cameraPosition = CameraPosition(
    target: LatLng(5.3500466318116935, -4.035610431394458),
    zoom: 14,
  );

  bool isArrived = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        isArrived = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: Drawers(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/tracking.png"),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Padding(
                  padding: EdgeInsets.all(4.w),
                  child: Container(
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
                ),
              ),
              //   GoogleMap(

              //    initialCameraPosition: _cameraPosition,
              //    onMapCreated: (GoogleMapController controller) {
              //      _completer.complete(controller);
              //    },
              // ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6.w),
                      topRight: Radius.circular(6.w),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffF5F9F8),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(6.w),
                              topRight: Radius.circular(6.w),
                            ),
                          ),
                          padding: EdgeInsets.all(4.w),
                          child: Text(
                            "Livraison en cours",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.w),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Destinataire",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "0758271213",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.green,
                                shape: BoxShape.circle,
                              ),
                              width: 10.w,
                              height: 10.w,
                              padding: EdgeInsets.all(2.w),
                              child: Icon(
                                Icons.call,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.w),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Adresse",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "1245 Boulevard\nAngré Chateau,\nCocody, Côte d’Ivoire",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              width: 10.w,
                              height: 10.w,
                              child:
                                  Assets.images.localisation.image(width: 5.w),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.w),
                        child: !isArrived
                            ? Text(
                                "En route pour la livraison...",
                                style: TextStyle(
                                  color: AppColors.green,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              )
                            : SubmitButton(
                                text: "Colis remis au destinataire",
                                onTap: () async {
                                  var result = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CodeLivraiseur1(),
                                    ),
                                  );
                                  if (result != null) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CoursEffectue(),
                                      ),
                                    );
                                  }
                                },
                              ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
