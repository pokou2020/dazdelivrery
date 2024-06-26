import 'package:dazdelivery/src/screem/Accueil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'connexion_Page.dart';


class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          
          child: Column(
         
          children:  [
            Expanded(
              flex: 2,
              child: Container(
                height: 30.h,
                width: 100.w,
                
                decoration: BoxDecoration(
                 
                  image: DecorationImage(image: AssetImage("assets/images/Kub Logo_HD-04.png"))
                ),
              ),
            ),

                Expanded(
                  flex: 3,
              child: Container(
                height: 30.h,
                width: 100.w,
                
              child:Stack(
                children: [
                  Container(
                     height: 30.h,
                width: 100.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/—Pngtree—mobile phone png smartphone camera_6067590.png"))

                    ),
                  ),
                  Container(
                      height: 30.h,
                width: 100.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/Voiture-removebg-preview.png"))

                    ),
                  ),
                ],
              )
              ),
            ),
                Expanded(
                  flex: 1,
              child: Container(
                
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Center(child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ConnexionPage()));
                      },
                       child: Container(
                        height: 6.h,
                        width: MediaQuery.of(context).size.width/2,
                        decoration: BoxDecoration(
                           border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10)
                        ),
                         child: Center(
                           child: Text('Se connecter',
                           style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                           ),
                           ),
                         ),
                       ),
                     )),
                       Center(child: Container(
                      height: 6.h,
                      width: MediaQuery.of(context).size.width/2,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(10)
                      ),
                       child: Center(
                         child: Text('Inscription',
                         style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                         ),
                         ),
                       ),
                     )),
                       Center(child: Container(
                      height: 6.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                       
                        borderRadius: BorderRadius.circular(10)
                      ),
                       child: Center(
                         child: Text('Se connecter avec Gmail',
                         style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                         ),
                         ),
                       ),
                     )),

         
                     Text("Numero 1 partout en COTE D'IVOIRE")
                   ],
                 ),
                 
              
              ),
            ),
          ],
        )),
      ),
    );
  }
}