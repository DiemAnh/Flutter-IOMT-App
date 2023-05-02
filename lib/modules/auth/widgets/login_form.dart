// import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/modules/auth/screens/stations_screen.dart';
import 'package:my_app/modules/auth/widgets/auth_button.dart';
import 'package:my_app/modules/auth/widgets/info_field.dart';
import 'package:my_app/modules/auth/widgets/password_field.dart';
import 'package:my_app/route/route_name.dart';
import 'package:my_app/route/app_router.dart';
import 'package:my_app/themes/app_colors.dart';
import 'package:my_app/themes/spacing.dart';
import 'package:my_app/themes/text_styles.dart';
import 'package:flutter/material.dart';

import '../bloc/app_cubit.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  
  final TextEditingController _userEmailController = TextEditingController(text:'');
  final TextEditingController _passwordController = TextEditingController(text:'');

  void _handleLoginButtonTap(BuildContext context) {
    print(
        "Login with ${_userEmailController.text} - ${_passwordController.text} ");
    _login(context);
  }

  void _login(BuildContext context) async {
    final username = _userEmailController.text;
    final password = _passwordController.text;
    final authCubit = context.read<AuthCubit>();
    authCubit.login(username, password);
  }

  void _showErrorMessage(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 3),
      ),
    );

    void _pushToMainScreen(User user, BuildContext context) {
    print("Navigate to main screen");
    // update app state
    Navigator.pushNamed(context, RouteName.mainDemo, arguments: user);
  }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:32,left:32,right:32),
      child: Column(
        children: [
          InfoField(
            controller: _userEmailController,
            hintText: 'Enter your email'),
          Spacing.h16,
          PasswordField(
            controller: _passwordController, 
            hintText: 'Enter your password'),
          Spacing.h8,
          Container(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: (){},
              child: const Text('Forget your password?',style: TextStyle(color: Colors.white),),),
               ),
          Spacing.h24,
          AuthButton(
            title: 'Log in', 
            onPressed:() => _handleLoginButtonTap(context),),
          Spacing.h24,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text(
                'Not a member?',
                style: TextStyles.t16R.copyWith(color: Colors.white),),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Register now',
                  style: TextStyles.t16R.copyWith(color: Colors.white, fontWeight: FontWeight.bold ),))
            ],
          )
        ],
      ),
    );
  }
}