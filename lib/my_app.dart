import 'package:dalel_app/core/theme/app_theme.dart';
import 'package:dalel_app/features/Auth/presentation/screens/login/login_screen.dart';
import 'package:dalel_app/features/Auth/presentation/screens/sign_up/sign_up_screen.dart';
import 'package:dalel_app/features/splash_onBoarding/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (context) => const SplashScreen(),
        LoginScreen.routeName : (context) => const LoginScreen(),
        SignUpScreen.routeName : (context) => const SignUpScreen(),


      },
    );
  }
}
