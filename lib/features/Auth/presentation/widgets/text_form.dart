import 'package:dalel_app/core/app_color.dart';
import 'package:dalel_app/core/app_strings.dart';
import 'package:flutter/material.dart';

class textForm extends StatelessWidget {
  String label ;
  Icon suffexIcon ;

  textForm({required this.label, required this.suffexIcon});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
        cursorColor: AppColors.primaryColor,
        decoration:InputDecoration(
            label: Text(label,style: TextStyle(color: AppColors.primaryColor),) ,
            suffixIcon: suffexIcon,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: AppColors.greyTextColor,
                )
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: AppColors.blackColor,
                )
            )
        )
    )
    ;
  }
}
