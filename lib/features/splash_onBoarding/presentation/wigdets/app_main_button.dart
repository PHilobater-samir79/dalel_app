import 'package:dalel_app/core/app_color.dart';
import 'package:flutter/material.dart';

class AppMainButton extends StatelessWidget {
  final radius = 10.0;
  final Color? color = AppColors.primaryColor;
  final VoidCallback? voidCallback;
  final String? text;

  AppMainButton({
    super.key,
    required this.voidCallback,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 343,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton(
        onPressed: voidCallback,
        child: Text(
          text!,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
