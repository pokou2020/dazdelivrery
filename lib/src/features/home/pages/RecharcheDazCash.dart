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
import 'RechargeEffectuer.dart';
import 'TransfertEffectuer.dart';
import 'drawer.dart';

class RecharcheDazCash extends StatefulWidget {
  const RecharcheDazCash({super.key});

  @override
  State<RecharcheDazCash> createState() => _RecharcheDazCashState();
}

class _RecharcheDazCashState extends State<RecharcheDazCash> {
  
  @override
  Widget build(BuildContext context) {
    final double drawerWidth = MediaQuery.of(context).size.width * .8;

    return Scaffold(
  
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 70,
              color: Color.fromARGB(255, 237, 247, 255),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                       
                        child: Assets.images.biArrowLeft.image()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Text(
                      "Recharge",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),

    
            Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                             SizedBox(height: 40,),
      
                      Text(
                        "Remplissez les champs ci-dessous pour",
                        style: TextStyle(
                         
                          fontSize: 14.sp,
                        ),
                      ),
                   
                      Text(
                        "recharge votre compte Daz Cash",
                        style: TextStyle(
                          fontSize: 14.sp,
                        ),
                      ),
                        Gap(10.h),
                     
                      Gap(2.h),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:InputText(
      
   
      suffixIcon: Padding(
        padding: EdgeInsets.all(3.w),
        child:Text("Daz Cash"),
      ),
      hintText: "0",
      
     
    )
                      ),
                   
                     
                   
                       Gap(17.h),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SubmitButton(
                          text: "Confirmer la recharge",
                          onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>RechargeEffectuer()));
                            
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
