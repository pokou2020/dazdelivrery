
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Accueil.dart';
class ConnexionPage extends StatelessWidget {
  const ConnexionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          
          child: Column(
         
          children:  [
            // Expanded(
            //   child: Container(
            //     height: 30.h,
            //     width: 100.w,
                
            //     decoration: BoxDecoration(
                 
            //       image: DecorationImage(image: AssetImage("assets/images/Kub Logo_HD-04.png"))
            //     ),
            //   ),
            // ),

                Expanded(
              child: Container(
                height: 30.h,
                width: 100.w,
                
              child: Center(
                child: Text("Bienvenue",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Acceuil()));
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