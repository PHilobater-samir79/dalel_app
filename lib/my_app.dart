import 'package:dalel_app/features/splash_onBoarding/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: splashScreen.routeName,
      routes: {
        splashScreen.routeName : (context) => splashScreen(),



      },
    );
  }
}
