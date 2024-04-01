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

      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
             
               color: Color.fromARGB(255, 237, 247, 255),
             
              child: Padding(
                 padding: const EdgeInsets.only(top:15.0),
                child: Row(
                  
                  children: [
                       
                        InkWell(
                            onTap: () =>
                                _globalKey.currentState?.openDrawer(),
                            child: Assets.images.ciMenuAlt01.image()),
                    Padding(
                     padding: const EdgeInsets.only(left: 20),
                      child: Text("Historique des livraisons",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20
                      ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child:  Container(
            child: Padding(
              padding: const EdgeInsets.only(top:8.0, left: 12, right: 12, bottom: 8),
              child: ListView(
                children: [
                 Padding(
                   padding: const EdgeInsets.only(bottom:15.0),
                   child: Text("Mercredi,21 septembre 2023",
                    style: const TextStyle(
                    color:  Colors.grey,
                    fontSize: 18
                    ),
                    ),
                 ),

                  Padding(
                     padding: const EdgeInsets.only(bottom:15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                          ),
                          child: Icon(Icons.file_open_outlined, color: Colors.green,) ,
                        ),
                      
                            Container(
                              height: 50,
                              width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                             Text("Colis #7258452457",
                             style: TextStyle(
                              fontSize: 18
                             ),
                             ),
                             SizedBox(height: 10,),
                        Text("Angré 7e tranche, Cocody",
                            style: TextStyle(
                              fontSize: 15
                             ),
                        ),
                         ],
                          ),
                        ),
                          Container(
                            height: 50,
                              width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                             Text("1700 FCFA", 
                             style: TextStyle(
                              color: Colors.green,
                               fontSize: 15
                             ),
                             ),
                             SizedBox(height: 10,),
                        Text("11:30",
                          style: TextStyle(
                              fontSize: 15
                             ),
                        
                        ),
                         ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    indent: 55,
                  ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:15.0),
                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                           Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                          ),
                          child: Icon(Icons.file_open_outlined, color: Colors.green,) ,
                        ),
                                          
                            Container(
                              height: 50,
                              width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                             Text("Colis #7258452457",
                             style: TextStyle(
                              fontSize: 18
                             ),
                             ),
                             SizedBox(height: 10,),
                        Text("Angré 7e tranche, Cocody",
                            style: TextStyle(
                              fontSize: 15
                             ),
                        ),
                         ],
                          ),
                        ),
                          Container(
                            height: 50,
                              width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                             Text("1700 FCFA", 
                             style: TextStyle(
                              color: Colors.green,
                               fontSize: 15
                             ),
                             ),
                             SizedBox(height: 10,),
                        Text("11:30",
                          style: TextStyle(
                              fontSize: 15
                             ),
                        
                        ),
                         ],
                          ),
                        ),
                                          ],
                                        ),
                      ),

                           Divider(
                    indent: 55,
                  ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:15.0),
                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                           Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                          ),
                          child: Icon(Icons.file_open_outlined, color: Colors.green,) ,
                        ),
                                          
                            Container(
                              height: 50,
                              width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                             Text("Colis #7258452457",
                             style: TextStyle(
                              fontSize: 18
                             ),
                             ),
                             SizedBox(height: 10,),
                        Text("Angré 7e tranche, Cocody",
                            style: TextStyle(
                              fontSize: 15
                             ),
                        ),
                         ],
                          ),
                        ),
                          Container(
                            height: 50,
                              width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                             Text("1700 FCFA", 
                             style: TextStyle(
                              color: Colors.green,
                               fontSize: 15
                             ),
                             ),
                             SizedBox(height: 10,),
                        Text("11:30",
                          style: TextStyle(
                              fontSize: 15
                             ),
                        
                        ),
                         ],
                          ),
                        ),
                                          ],
                                        ),
                      ),

                           Divider(
                    indent: 55,
                  ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:15.0),
                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                           Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                          ),
                          child: Icon(Icons.file_open_outlined, color: Colors.green,) ,
                        ),
                                          
                            Container(
                              height: 50,
                              width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                             Text("Colis #7258452457",
                             style: TextStyle(
                              fontSize: 18
                             ),
                             ),
                             SizedBox(height: 10,),
                        Text("Angré 7e tranche, Cocody",
                            style: TextStyle(
                              fontSize: 15
                             ),
                        ),
                         ],
                          ),
                        ),
                          Container(
                            height: 50,
                              width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                             Text("1700 FCFA", 
                             style: TextStyle(
                              color: Colors.green,
                               fontSize: 15
                             ),
                             ),
                             SizedBox(height: 10,),
                        Text("11:30",
                          style: TextStyle(
                              fontSize: 15
                             ),
                        
                        ),
                         ],
                          ),
                        ),
                                          ],
                                        ),
                      ),
                                 Divider(
                    indent: 35,
                  ),
                        Padding(
                   padding: const EdgeInsets.only(bottom:15.0),
                   child: Text("Mardi,21 septembre 2023",
                    style: const TextStyle(
                    color:  Colors.grey,
                    fontSize: 18
                    ),
                    ),
                 ),
               
                 
                      Padding(
                        padding: const EdgeInsets.only(bottom:15.0),
                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                           Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                          ),
                          child: Icon(Icons.file_open_outlined, color: Colors.green,) ,
                        ),
                                          
                            Container(
                              height: 50,
                              width: 200,
                              
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                             Text("Colis #7258452457",
                             style: TextStyle(
                              fontSize: 18
                             ),
                             ),
                             SizedBox(height: 10,),
                        Text("Angré 7e tranche, Cocody",
                            style: TextStyle(
                              fontSize: 15
                             ),
                        ),
                         ],
                          ),
                        ),
                          Container(
                             height: 50,
                              width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                             Text("1700 FCFA", 
                             style: TextStyle(
                              color: Colors.green,
                               fontSize: 15
                             ),
                             ),
                             SizedBox(height: 10,),
                        Text("11:30",
                          style: TextStyle(
                              fontSize: 15
                             ),
                        
                        ),
                         ],
                          ),
                        ),
                                          ],
                                        ),
                      ),
                                Divider(
                    indent: 55,
                  ),
                   
                      Padding(
                        padding: const EdgeInsets.only(bottom:15.0),
                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                           Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange
                          ),
                          child: Icon(Icons.file_open_outlined, color: Color.fromARGB(255, 247, 247, 247),) ,
                        ),
                                          
                            Container(
                              height: 50,
                              width: 200,
                              
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                             Text("Colis #7258452457",
                             style: TextStyle(
                              fontSize: 18
                             ),
                             ),
                             SizedBox(height: 10,),
                        Text("Angré 7e tranche, Cocody",
                            style: TextStyle(
                              fontSize: 15
                             ),
                        ),
                         ],
                          ),
                        ),
                          Container(
                            height: 50,
                              width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                             Text("0 FCFA", 
                             style: TextStyle(
                              color: Colors.green,
                               fontSize: 15
                             ),
                             ),
                             SizedBox(height: 10,),
                        Text("11:30",
                          style: TextStyle(
                              fontSize: 15
                             ),
                        
                        ),
                         ],
                          ),
                        ),
                                          ],
                                        ),
                      ),   
                     
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}