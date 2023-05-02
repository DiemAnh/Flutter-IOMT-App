import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:my_app/themes/text_styles.dart';
import 'package:my_app/themes/spacing.dart';
import 'package:my_app/themes/app_colors.dart';

class AuthTitle extends StatelessWidget {
  const AuthTitle({super.key, required this.title,required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacing.h32,
        Text(
          title,
          style: TextStyles.t32M.copyWith(color: AppColors.mainBackground), 
          textAlign: TextAlign.center,
        ),
        Spacing.h8,
        Text(
          subTitle,
          style: TextStyles.t20T.copyWith(color: AppColors.mainBackground),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}