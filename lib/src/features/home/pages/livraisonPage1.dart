import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
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
      drawer: Drawers(),
      body: Container(
        decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage("assets/images/tracking.png"), fit: BoxFit.cover)
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(
                child: Padding(
                  padding: EdgeInsets.all(4.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        
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
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                     color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: Column(
                    children: [
                      InkWell(
                       
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
                              Text("Livraison en cours"),
                              SizedBox(
                                width: 10,
                              ),
                            
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text("Expéditeur"),
                        subtitle: Text("0747518089"),
                       
                        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.call)),
                      ),
                    
                       ListTile(
                        title: Text("Adresse"),
                        subtitle: Text("1245 Boulevard Angré Chateau Cocody Cote d'ivoire"),
                        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.add_location_alt_sharp)),
                      ),
                  
                      
                      InkWell(
                        onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>LivraisonPage2()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text("En route pour la livraison...",
                          style: TextStyle(
                            color: Colors.green
                          ),
                          )),
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

  getDeliveries() {
    //_homeController.getDeliveries();
  }
}
