import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider_shop_app/pages/home_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      body: Padding(
        padding:
            const EdgeInsets.only(right: 20, top: 20, left: 20, bottom: 10.0),
        child: Column(
          children: [
            // logo
            Image.asset(
              'lib/images/perfume.png',
            ),

            // we deliver PRODUCT at your doorstep
            Text(
              "We deliver PRODUCT at your doorstep",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight : FontWeight.bold
              )
            ),
          const  SizedBox(
              height: 24.0,
            ),
            // fresh products everyday
           const Text("Fresh products everyday", style: TextStyle(
            color: Colors.grey
           ),),

            // get started button
          const  Spacer(),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12),
                ),
               padding: const EdgeInsets.all(24),
                child: const Text("Get Started",
                style: TextStyle(color: Colors.white),),
              ),
            ),
          const  Spacer()
          ],
        ),
      ),
    );
  }
}
