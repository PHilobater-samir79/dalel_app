import 'package:dalel_app/features/splash_onBoarding/presentation/screens/onBoarding_screen.dart';
import 'package:dalel_app/features/splash_onBoarding/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: SplashScreen.routeName,
      // routes: {
      //   SplashScreen.routeName : (context) => const SplashScreen(),
      // },
      home: OnBoardingScreen(),
    );
  }
}
