import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/main.dart';
import 'package:my_app/modules/auth/screens/stations_screen.dart';
import '../modules/auth/bloc/app_cubit.dart';
import '../modules/auth/screens/station1_home_screen.dart';
import 'route_name.dart';
import 'package:flutter/material.dart';
import 'package:my_app/modules/auth/screens/login_screen.dart';
import 'package:my_app/modules/auth/screens/sign_up_screen.dart';

class AppRouter {
  AppRouter._instance();
  static final AppRouter instance = AppRouter._instance();

  
  Route? onGenerateRoute(RouteSettings settings){
    switch (settings.name) {
      case RouteName.login:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => AuthCubit(),
                    ),
                  ],
                  child: const LoginScreen(),
                ),
            settings: const RouteSettings(name: RouteName.login));
      case RouteName.signUp:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
          settings: const RouteSettings(name: RouteName.signUp)
        );
      case RouteName.mainDemo:
        return MaterialPageRoute(
          builder: (context)=> const Stations(),
          settings: const RouteSettings(name: RouteName.mainDemo)
        );
      case RouteName.userPage1:
      return MaterialPageRoute(
        builder: (context)=> const Station1(),
        settings: const RouteSettings(name: RouteName.userPage1)
      );
      default:
    }
    return null;
  }
}