import 'package:dalel_app/core/app_assets.dart';
import 'package:dalel_app/core/app_color.dart';
import 'package:dalel_app/core/app_strings.dart';
import 'package:dalel_app/features/Auth/presentation/screens/login/login_screen.dart';
import 'package:dalel_app/features/Auth/presentation/screens/sign_up/sign_up_screen.dart';
import 'package:dalel_app/features/splash_onBoarding/model/onboarding_model.dart';
import 'package:dalel_app/features/splash_onBoarding/presentation/wigdets/app_main_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final onBoardingController = PageController();

  final List<OnBoardingMode> onBoarding = [
    OnBoardingMode(
      AppAssets.onBoardingImage1,
      AppStrings.onBoarding1Title,
      AppStrings.onBoarding1Desc,
    ),
    OnBoardingMode(
      AppAssets.onBoardingImage2,
      AppStrings.onBoarding2Title,
      AppStrings.onBoarding2Desc,
    ),
    OnBoardingMode(
      AppAssets.onBoardingImage3,
      AppStrings.onBoarding3Title,
      AppStrings.onBoarding3Desc,
    ),
  ];

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpScreen(),
                ),
                (route) => false,
              );
            },

            child: Text(
              isLast? '' : "Skip" ,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.blackColor,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                controller: onBoardingController,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) =>
                    buildBoardingItem(onBoarding[index]),
                itemCount: onBoarding.length,
                onPageChanged: (index) {
                  if (index == onBoarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildBoardingItem(OnBoardingMode onBoardingModel) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image(
              image: AssetImage(onBoardingModel.image!),
            ),
          ),
          SmoothPageIndicator(
            controller: onBoardingController,
            count: onBoarding.length,
            effect: WormEffect(
              dotColor: AppColors.greyTextColor,
              dotHeight: 15,
              dotWidth: 15,
              spacing: 5,
              activeDotColor: AppColors.darkBrown,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            onBoardingModel.title!,
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            onBoardingModel.description!,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          AppMainButton(
            voidCallback: () {
              if (isLast) {
                Navigator.of(context).pushReplacementNamed(
                  SignUpScreen.routeName,
                );
              } else {
                onBoardingController.nextPage(
                  duration: const Duration(
                    milliseconds: 750,
                  ),
                  curve: Curves.fastEaseInToSlowEaseOut,
                );
              }
            },
            text: isLast ? "Create Account" : "Next",
          ),
          if (isLast)
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(
                  LoginScreen.routeName
                );
              },
              child: Text(
                "Login Now",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF6F6460),
                ),
              ),
            )
        ],
      );
}