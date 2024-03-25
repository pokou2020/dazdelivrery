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

class Drawers extends StatefulWidget {
  const Drawers({super.key});

  @override
  State<Drawers> createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
 
  @override
  Widget build(BuildContext context) {
     final double drawerWidth = MediaQuery.of(context).size.width * .8;
    return  Drawer(
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
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>DazCash()));
                        },
                      ),
                  
               
                    
               
                   
                    ],
                  ),
                ),
              ),
               
                     Padding(

                       padding: EdgeInsets.all(4.w),
                       child:Row(
                        children: [
                           Assets.images.icBaselineLogOut1.image(width: 5.w),
                           TextButton(onPressed: (){
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
                           child: Text("Déconnexion",
                           style: TextStyle(
                            color:Colors.red
                           ),
                           ),
                           )
                        
               
                        ],
                       )
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
      
    );
  }
}