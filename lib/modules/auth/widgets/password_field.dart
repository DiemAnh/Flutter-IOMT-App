import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:my_app/themes/app_colors.dart';
import 'package:my_app/themes/spacing.dart';
import 'package:my_app/themes/text_styles.dart';

class PasswordField extends StatefulWidget {
  PasswordField({super.key, required this.controller, required this.hintText});
  
  final TextEditingController controller;
  final String hintText; 

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  final _focusNode = FocusNode();
  bool _isFocused = false;
  final _defaultBorder = Border.all(color: Colors.white,width:1);
  final _focusedBorder = Border.all(color: Colors.white,width: 2);

  @override
  void initState(){
    _focusNode.addListener(_onFocusChange);
    super.initState();
  } 

  void _onFocusChange(){
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  void dispose(){
    super.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: _isFocused? _focusedBorder:_defaultBorder,
        borderRadius: BorderRadius.circular(8),
        color: Colors.transparent,
      ),
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: Color.fromRGBO(255, 255, 255, 0.5),
          ),
          contentPadding: const EdgeInsets.all(16),
        ),
        style: TextStyles.t16R.copyWith(color: Colors.white),
        focusNode: _focusNode,
      ),
    );
  }
}