import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:my_app/themes/text_styles.dart';

class StationsButton extends StatelessWidget {
  const StationsButton({super.key,required this.onPressed, required this.title});
  final Function onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        onPressed();
      }, 
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 253, 232, 253),
        padding: const EdgeInsets.all(16),
        minimumSize: const Size(150,150),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
      child: Text(
        title,
        style: TextStyles.t20R.copyWith(color: Colors.black),
      ));
  }
}