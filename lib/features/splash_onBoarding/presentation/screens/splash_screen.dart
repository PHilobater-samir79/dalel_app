import 'dart:async';

import 'package:dalel_app/core/app_color.dart';
import 'package:dalel_app/core/app_strings.dart';
import 'package:dalel_app/features/splash_onBoarding/presentation/screens/onBoarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splashScreen';

  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _a = false;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 700), () {
      setState(() {
        _a = !_a;
      });
    });
    Timer(const Duration(milliseconds: 2000), () {
      Navigator.of(context).pushReplacement(
        SlideTransitionAnimation(
          const OnBoardingScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 2000),
            curve: Curves.fastLinearToSlowEaseIn,
            width: _a ? width : 0,
            height: height,
            color: AppColors.backgroundColor,
          ),
          Center(
            child: Text(
              AppStrings.appName,
              style: GoogleFonts.pacifico(
                  color: AppColors.primaryColor, fontSize: 60),
            ),
          ),
        ],
      ),
    );
  }
}

class SlideTransitionAnimation extends PageRouteBuilder {
  final Widget page;

  SlideTransitionAnimation(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: const Duration(milliseconds: 2000),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
              curve: Curves.fastLinearToSlowEaseIn,
              parent: animation,
            );
            return SlideTransition(
              position: Tween(
                      begin: const Offset(1.0, 0.0),
                      end: const Offset(0.0, 0.0))
                  .animate(animation),
              textDirection: TextDirection.ltr,
              child: page,
            );
          },
        );
}
