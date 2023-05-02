import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_app/modules/auth/screens/login_screen.dart';
import 'package:my_app/themes/app_colors.dart';
import 'package:my_app/themes/spacing.dart';
import 'package:my_app/themes/text_styles.dart';
import 'package:my_app/route/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  //Initializing Database when starting the application.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(const MyApp());
}
  
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IOT',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      onGenerateRoute: AppRouter.instance.onGenerateRoute,
    );
  }
}
