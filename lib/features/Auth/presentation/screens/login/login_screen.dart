import 'package:dalel_app/core/app_assets.dart';
import 'package:dalel_app/core/app_color.dart';
import 'package:dalel_app/core/app_strings.dart';
import 'package:dalel_app/features/Auth/presentation/widgets/text_form.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const String routeName = 'loginScreen';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              AppColors.primaryColor,
              AppColors.backgroundColor,
              AppColors.backgroundColor,
            ])),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(

            child: Padding(
              padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      AppAssets.login,
                      width: width,
                      height: height * .3,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      AppStrings.appName,
                      style: GoogleFonts.pacifico(
                        color: AppColors.whiteColor,
                        fontSize: 60,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * .1,
                ),
                Text(
                  AppStrings.welcomeBack,
                  style: GoogleFonts.adamina(
                    color: AppColors.blackColor,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Form(
                      child: Column(
                    children: [
                      textForm(
                          label: AppStrings.emailAddress,
                          suffexIcon: Icon(Icons.email_outlined,
                              color: AppColors.primaryColor)),
                      SizedBox(
                        height: 20,
                      ),
                      textForm(
                          label: AppStrings.password,
                          suffexIcon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: AppColors.primaryColor,
                          )),
                    ],
                  )),
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        AppStrings.forgotPassword,
                        style: TextStyle(color: AppColors.blackColor, fontSize: 14),
                      )),
                ),
                SizedBox(
                  height: height * .18,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * .3, vertical: height * .02),
                        child: Text(
                          AppStrings.signIn,
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.doNotHaveAccount,
                      style:
                          TextStyle(color: AppColors.greyTextColor, fontSize: 15),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      AppStrings.signUp,
                      style: TextStyle(color: AppColors.primaryColor, fontSize: 15),
                    ),
                  ],
                )
              ]),
            ),
          ),
        ));
  }
}
