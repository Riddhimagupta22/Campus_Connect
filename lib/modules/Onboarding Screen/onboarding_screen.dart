import 'package:campus_connects/modules/Onboarding%20Screen/Widgets/pages.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _controller = PageController();
  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemBuilder: (context, index) => Pages(
                image: "Assets/Image/cc01.png",
                title: "Meet New Friends",
                subtitle:
                    "Connect with students in your classes and discover new friendships on campus",
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: 60,
            child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
            ), child: Image.asset("name")),
          )
        ],
      ),
    );
  }
}
