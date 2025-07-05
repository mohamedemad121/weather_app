import 'package:flutter/material.dart';
import 'package:weather_app/constant/fonts_manager.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, this.onSubmitted});
  final Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, right: 24, left: 24),
      child: TextField(
        style: TextStyle(color: Colors.white),

        onSubmitted: onSubmitted,

        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 24),  
            child: Icon(Icons.search, size: 24, color: Color(0xffd9d7da)),
          ),
          labelStyle: TextStyle(color: Colors.white),
          hintText: 'Search',
          filled: true,
          fillColor: Color(0xff252527),
          hintStyle: TextStyle(
            fontSize: 16,
            fontFamily: Fonts.kOrbitron,
            color: Color(0xff939395),
          ),

          border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
