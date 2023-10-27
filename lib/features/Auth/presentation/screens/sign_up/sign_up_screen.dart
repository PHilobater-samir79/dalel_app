import 'package:dalel_app/core/app_color.dart';
import 'package:dalel_app/core/app_strings.dart';
import 'package:dalel_app/features/Auth/presentation/widgets/text_form.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static const String routeName = 'SignUpScreen';

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
              AppColors.backgroundColor,
            ])),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
                child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(children: [
                SizedBox(
                  height: height * .14,
                ),
                Center(
                  child: Text(
                    AppStrings.welcome,
                    style: GoogleFonts.adamina(
                      color: AppColors.blackColor,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .1,
                ),
                Form(
                    child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      textForm(
                          label: AppStrings.firstName,
                          suffexIcon: Icon(Icons.person,
                              color: AppColors.primaryColor)),
                      SizedBox(
                        height: 20,
                      ),
                      textForm(
                          label: AppStrings.lastName,
                          suffexIcon: Icon(Icons.person,
                              color: AppColors.primaryColor)),
                      SizedBox(
                        height: 20,
                      ),
                      textForm(
                          label: AppStrings.emailAddress,
                          suffexIcon: Icon(Icons.email_outlined,
                              color: AppColors.primaryColor)),
                      SizedBox(
                        height: 20,
                      ),
                      textForm(
                          label: AppStrings.password,
                          suffexIcon: Icon(Icons.password,
                              color: AppColors.primaryColor)),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )),
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
                          AppStrings.loginNow,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    AppStrings.haveAccount,
                    style:
                        TextStyle(color: AppColors.greyTextColor, fontSize: 15),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    AppStrings.signIn,
                    style:
                        TextStyle(color: AppColors.primaryColor, fontSize: 15),
                  ),
                ]),
              ]),
            ))));
  }
}
