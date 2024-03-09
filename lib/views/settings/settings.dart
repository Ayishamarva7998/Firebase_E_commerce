// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:firebase_login/helpers/helpers.dart';
import 'package:firebase_login/services/auth_service.dart';
import 'package:firebase_login/views/settings/about.dart';
import 'package:firebase_login/views/settings/terms_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Settings extends StatelessWidget {
   Settings({super.key});
  AuthService auth =AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     backgroundColor:Color.fromARGB(255, 24, 30, 41),
      appBar: AppBar(backgroundColor:Color.fromARGB(255, 24, 30, 41),title: Text('Settings',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),), ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 29, 36, 49)
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width:100 ,
              
                      child: 
                        //  ClipRRect(child: Lottie.asset(''),)
                      Icon(Icons.person_outline_rounded,size: 60,color: Colors.grey,),
                    ),
                    Container(
                      height: 100,
                      width: 240,
                
                      child: Column(
                        children: [
                                              Text(auth.auth.currentUser!.displayName??'',style: GoogleFonts.montserrat(color:Colors.white,fontSize: 17),),
                     spacingHeight(10),
                    Text(auth.auth.currentUser!.email!,style:GoogleFonts.montserrat(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600)),
                    spacingHeight(10),
                    Text(auth.auth.currentUser!.uid,style:GoogleFonts.montserrat(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                 
                    
                   
                  
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 290,),
                    //   child: Icon(Icons.person,color: Colors.grey,size: 30,),
                    // ),

                    
                  ],
                  
                ),
              ),
            ),
     
            SizedBox(height: 60,),
            GestureDetector(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => About(),));
            },
              child: containers(text: 'About Us')),
            SizedBox(height: 20,),
            GestureDetector(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TermsPage(),));
            },
              child: containers(text: 'Terms     ')),
          

          

            // Expanded(child: WishListPage()),
          ],
          
          
        ),
        
        
      ),
      
    );
  }

  Container containers({required String text}) {
    return Container(height: 60,
          width: 400,
          color:Color.fromARGB(255, 188, 160, 78),
          // decoration: BoxDecoration(border: Border.all()),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(text,style: TextStyle(fontSize: 17),),
              ),
              SizedBox(width: 240,),
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
            ],
          ),);
          
  }
}