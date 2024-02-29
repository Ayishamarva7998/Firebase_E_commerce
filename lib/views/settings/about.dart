// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';



class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: IconButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, icon: Icon(Icons.arrow_back)),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text('About Us',
                    style:
                        TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 30,
                ),
                const Text(''' 
              Welcome to the E-commerce! 

              E-commerce makes life easier!

Welcome to a world where shopping knows no bounds  E-commerce!
 Unleash the power of convenience and choice as you embark on a seamless online shopping experience.
  We bring you an unparalleled selection of products, curated to cater to your diverse needs and desires.
.

             

              Is E-commerce a safe app:-

Easy Tracker does not handle any cash transactions,nor does it link to personal banking details,making it safer than other Apps. 








                               Explore the features ! ''')










  
  

 
  
             
              ],
            ),
          ), 
        ),
      ),
    );
  }
}
 