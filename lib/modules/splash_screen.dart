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

          Image(
            image: AssetImage("Assets/Image/slashlogo 1.png"),
            fit: BoxFit.fill,
          ),

          // Container(
          //   color: Colors.white.withOpacity(0),
          //   child:
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            ),
          // ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                height: 109,
                width: 110,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF2196F3), Color(0xFF8E24AA)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image(
                    image: AssetImage("Assets/Logo/Mortarboard.png"),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Text(
                "Campus Connect",
                style: GoogleFonts.inter(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF282727),
                ),
              ),

              Text(
                "Beyond One Campus",
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF454141),
                ),
              ),

              SizedBox(height: 60),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 5, backgroundColor: Color(0xFF2196F3)),
                  SizedBox(width: 6),
                  CircleAvatar(radius: 5, backgroundColor: Color(0xFF9C27B0)),
                  SizedBox(width: 61),
                  CircleAvatar(radius: 5, backgroundColor: Color(0xFFE91E63)),
                ],
              ),

            ],
          ),

        ],
      ),
    );
  }
}
