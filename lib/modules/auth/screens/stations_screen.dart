import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:my_app/modules/auth/screens/station1_nav_screen.dart';
import 'package:my_app/modules/auth/widgets/auth_title.dart';
import 'package:my_app/themes/app_colors.dart';
// import 'package:my_app/navigation/pages/page1.dart';
// import 'package:my_app/navigation/pages/page2.dart';
import 'package:my_app/modules/auth/widgets/stations_button.dart';
import 'package:my_app/themes/spacing.dart';
import 'station1_home_screen.dart';

class Stations extends StatelessWidget {
  const Stations({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        title: const Text('Console Center'),
      ),
      body: Stack(
        children: [
          _buildBackGround(),
          SafeArea(
            child: Column(
              children: [
                Spacing.h24,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StationsButton(
                      onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: ((context)=> const Station1Navigator())));
                      }, 
                      title: 'Station 1'),
                    Spacing.v24,
                    StationsButton(
                      onPressed: (){} ,
                      title: 'Station 2')
                  ],
                ),
                Spacing.h24,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StationsButton(
                      onPressed: (){}, 
                      title: 'Station 3'),
                    Spacing.v24,
                    StationsButton(onPressed: (){}, 
                    title: 'Add +')
                  ],
                ),
              ],
            ) 
          )
        ],
      )
    );
  }

  Widget _buildBackGround(){
    return Container(
    width: double.maxFinite,
    height: double.maxFinite,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.white, Color.fromRGBO(254, 228, 251, 1)]
      )
      )
    );
  }
}

 