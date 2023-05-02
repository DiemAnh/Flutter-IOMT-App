import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:my_app/modules/auth/widgets/auth_title.dart';
import 'package:my_app/modules/auth/widgets/login_form.dart';
import 'package:my_app/themes/app_colors.dart';
import 'package:my_app/modules/auth/widgets/auth_title.dart';
import 'package:my_app/modules/auth/bloc/app_cubit.dart';
import 'package:my_app/modules/auth/bloc/app_state.dart';
import 'package:my_app/modules/auth/models/auth_error.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../route/route_name.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _showLoadingDialog(BuildContext context){
      showDialog(
        context: context, 
        builder: (BuildContext context){
          return const AlertDialog(
            content: SizedBox(
              height: 80,
              child: Center(
                child: CircularProgressIndicator(),)
            ),
          );
        });
  }

  void _hideLoadingDialog(BuildContext context) {
    Navigator.pop(context);
  }

  void _showErrorDialog(BuildContext context, AuthError error) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(error.title),
          content: Text(error.message),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _navigateToMain(BuildContext context, User user) {
    Navigator.of(context).pushNamedAndRemoveUntil(
        RouteName.mainDemo, (route) => route.settings.name == RouteName.mainDemo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _buildBackGround(),
        SafeArea(
            child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthStateInProgress) {
              _showLoadingDialog(context);
            }
            if (state is AuthStateFailure) {
              _hideLoadingDialog(context);
              _showErrorDialog(context, state.error!);
            }
            if (state is AuthStateLoginSuccess) {
              _hideLoadingDialog(context);
              _navigateToMain(context, state.user!);
            }
          },
          builder: (context, state) {
            return Center(
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.center,
                      height: 150,
                      width: double.maxFinite,
                      child: const AuthTitle(
                          title: 'Welcome',
                          subTitle: 'Hello, let sign into your account!')),
                  LoginForm(),
                ],
              ),
            );
          },
        ))
      ],
    ));
  }

  Widget _buildBackGround() {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.purple,
              AppColors.primary500,
            ]),
      ),
    );
  }
}
