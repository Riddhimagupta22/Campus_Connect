import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image(image: AssetImage("Assets/Logo/slashlogo.jpg"),
            fit: BoxFit.fill,
            colorBlendMode: BlendMode.modulate ,),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0), // Adjust blur intensity
            child: Container(
              color: Colors.black.withOpacity(0), // Transparent overlay
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 109,
                  width: 110,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Color(0xFF2196F3),Color(0xFF8E24AA)],
                  begin: Alignment.centerLeft,end: Alignment.centerRight),
                  borderRadius:BorderRadius.circular(25)
                ),
              ),
              Text("Campus Connect",
                style: GoogleFonts.inter(
                    fontSize:26,fontWeight:FontWeight.w800,
                    color: Color(0xFF282727)),),
              Text("Beyond One Campus",
                style: GoogleFonts.inter(
                    fontSize:18,fontWeight:FontWeight.w600,
                    color: Color(0xFF454141)),),

              SizedBox(height: 60),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Color(0xFF2196F3),
                  ),
                  SizedBox(width: 6),
                  CircleAvatar(radius: 5, backgroundColor: Color(0xFF9C27B0),),
                  SizedBox(width: 6),
                  CircleAvatar(radius: 5, backgroundColor: Color(0xFFE91E63),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
