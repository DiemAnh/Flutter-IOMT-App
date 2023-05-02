import 'package:my_app/themes/app_colors.dart';
import 'package:my_app/themes/text_styles.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  AuthButton({super.key, required this.title, required this.onPressed});

  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary100,
        padding: const EdgeInsets.all(16),
        minimumSize: const Size(double.maxFinite*1/4, 56),
        shape: const StadiumBorder(),
      ),
      child: Text(
        title,
        style: TextStyles.t20M,
      ),
    );
  }
}