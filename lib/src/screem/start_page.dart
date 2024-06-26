import 'package:dazdelivery/src/screem/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';




class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
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
              child: Container(
                height: 30.h,
                width: 100.w,
                
                decoration: BoxDecoration(
                 
                  image: DecorationImage(image: AssetImage("assets/images/Kub Logo_HD-04.png"))
                ),
              ),
            ),

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
                   children: [
                     InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                      },
                      child: Container(
                      height: 6.h,
                      width: MediaQuery.of(context).size.width/2,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)
                      ),
                       child: Center(
                         child: Text('Demarrer',
                         style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                         ),
                         ),
                       ),
                     )),

         SizedBox(height: 20.h,),
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