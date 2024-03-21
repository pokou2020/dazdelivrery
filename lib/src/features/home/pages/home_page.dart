import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
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

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  //late HomeController _homeController;
  //late User _user;
  final Completer<GoogleMapController> _completer = Completer();
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  static CameraPosition _cameraPosition = CameraPosition(
    target: LatLng(5.3500466318116935, -4.035610431394458),
    zoom: 14,
  );

  @override
  void initState() {
    //_homeController = ref.read(homeControllerProvider);
    //_user = _homeController.getUser();
    super.initState();
    //WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //  getDeliveries();
    //});
  }

  @override
  Widget build(BuildContext context) {
    final double drawerWidth = MediaQuery.of(context).size.width * .8;
    return Scaffold(
      key: _globalKey,
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          width: drawerWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.green,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                  vertical: 4.h,
                ),
                child: Row(
                  children: [
                    CircleAvatar(),
                    Gap(3.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap(0.5.h),
                          Text(
                            "patricktiess@gmail.com",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(1.w),
                    Assets.images.clarityEditSolid.image(width: 6.w)
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(4.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Menu",
                        style: TextStyle(
                         
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                          Gap(3.h),
                      DrawerMenuItem(
                        icon: Assets.images.icon,
                        text: "Daz",
                        onTap: () {
                          //Navigator.pushNamed(context, DeliveryListPage.name)
                        },
                      ),
                      Gap(3.h),
                      DrawerMenuItem(
                        icon: Assets.images.carbonDeliveryParcel,
                        text: "Mes livraisons",
                        onTap: () {
                          //Navigator.pushNamed(context, DeliveryListPage.name)
                        },
                      ),
                           Gap(3.h),
                      DrawerMenuItem(
                        icon: Assets.images.gift,
                        text: "Daz Cash",
                        onTap: () {
                          //Navigator.pushNamed(context, DeliveryListPage.name)
                        },
                      ),
                  
               
                    
               
                      // DrawerMenuItem(
                      //   icon: Assets.images.icBaselineLogOut,
                      //   text: "Déconnexion",
                      //   onTap: () {
                      //     showInfoDialog(
                      //       context,
                      //       message: "Se déconnecter ?",
                      //       positiveLabel: "OUI",
                      //       negativeLabel: "NON",
                      //       positiveCallBack: () {
                      //         //_homeController.logout();
                      //         Navigator.pushAndRemoveUntil(
                      //             context,
                      //             MaterialPageRoute(
                      //                 builder: (context) => LoginPage()),
                      //             (route) => false);
                      //       },
                      //     );
                      //   },
                      // ),
                    ],
                  ),
                ),
              ),
               
                     Padding(

                       padding: EdgeInsets.all(4.w),
                       child: DrawerMenuItem(
                          icon: Assets.images.icBaselineLogOut,
                          text: "Déconnexion",
                          
                          onTap: () {
                            showInfoDialog(
                              context,
                              message: "Se déconnecter ?",
                              positiveLabel: "OUI",
                              negativeLabel: "NON",
                              positiveCallBack: () {
                                //_homeController.logout();
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()),
                                    (route) => false);
                              },
                            );
                          },
                        ),
                     ),
           Gap(15.h),
              Padding(
                padding: EdgeInsets.all(4.w),
                child: const Text(
                  "Copyright daz 2022",
                  style: TextStyle(
                    color: AppColors.greyDark,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Padding(
                padding: EdgeInsets.all(4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
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
                        InkWell(
                          onTap: () {
                            showInfoDialog(
                              context,
                              message: "Se déconnecter ?",
                              positiveLabel: "OUI",
                              negativeLabel: "NON",
                              positiveCallBack: () {
                                //_homeController.logout();
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()),
                                    (route) => false);
                              },
                            );
                          },
                          child: Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width / 1.5,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 253, 171, 47),
                                borderRadius: BorderRadius.circular(3)),
                            child: Center(
                              child: Text(
                                'Se déconnecter',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
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
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                      showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                     
                                
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  title: Text("Proposition de course"),
                                  content: Container(
                                    height: MediaQuery.of(context).size.height/4,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("Adresse de récupération",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600
                                        ),
                                        ),
                                         Center(child: Text("Angré  7e tranche non loin du maquis bluethooth")),
                                         InkWell(
                                          onTap: () {
                                                   showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                     
                                
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  title: Center(
                                    child: const Text("Course acceptée",
                                    style: TextStyle(
                                     
                                    ),
                                    ),
                                  ),
                                  content: Container(
                                    height: MediaQuery.of(context).size.height/4,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("Adresse de récupération",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600
                                        ),
                                        ),
                                         Center(child: Text("Angré  7e tranche non loin du maquis bluethooth")),
                                         InkWell(
                                          onTap: () {
                                            
                                          },
                                           child: Container(
                                            height: 30,
                                            width: MediaQuery.of(context).size.width,
                                           
                                            child: Center(
                                              child: Text("Prix de la course",
                                              style: TextStyle(
                                               
                                              ),
                                              ),
                                            ),
                                           ),
                                         ),
                                          Container(
                                            height: 30,
                                            child: Text("8 500 FCFA",
                                            style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             fontSize: 20
                                            ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                                          },
                                           child: Container(
                                            height: 60,
                                            width: MediaQuery.of(context).size.width,
                                            color: Colors.green,
                                            child: Center(
                                              child: Text("Accepter",
                                              style: TextStyle(
                                                color: Colors.white
                                              ),
                                              ),
                                            ),
                                           ),
                                         ),
                                          InkWell(
                                            onTap: (){
                                        
                                        showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                     
                                
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  title: const Text("Vous pouvez toujours accepter la course",
                                  style: TextStyle(
                                    fontSize: 15
                                  ),
                                  ),
                                  content: Container(
                                    height: MediaQuery.of(context).size.height/4,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("Adresse de récupération",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600
                                        ),
                                        ),
                                         Center(child: Text("Angré  7e tranche non loin du maquis bluethooth")),
                                         InkWell(
                                          onTap: () {
                                            
                                          },
                                           child: Container(
                                            height: 50,
                                            width: MediaQuery.of(context).size.width,
                                            color: Colors.green,
                                            child: Center(
                                              child: Text("Prendre la course",
                                              style: TextStyle(
                                                color: Colors.white
                                              ),
                                              ),
                                            ),
                                           ),
                                         ),
                                          InkWell(
                                              onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                            child: Container(
                                              height: 50,
                                              child: Center(
                                                child: Text("Confirmer l'annulation",
                                                style: TextStyle(
                                                  color: Colors.orange
                                                ),
                                                ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                                            },
                                            child: Container(
                                              height:30 ,
                                              child: Center(
                                                child: Text("Décliner",
                                                style: TextStyle(
                                                  color: Colors.orange
                                                ),
                                                ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 237, 247, 255),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Vous êtes en ligne"),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.green),
                            )
                          ],
                        ),
                      ),
                    ),
                    Center(child: Text("Recette du jour")),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text(
                      "8 500",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text(
                      "Consulter ses gains",
                      style: TextStyle(color: Colors.green),
                    )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  getDeliveries() {
    //_homeController.getDeliveries();
  }
}
