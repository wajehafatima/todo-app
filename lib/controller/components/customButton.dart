import 'package:flutter/material.dart';
import 'package:untitled/controller/constants/colors/AppColors.dart';
class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;


  CustomButton({
    required this.buttonText,
    required this.onTap,


  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        height: 60,
        width: 350,
        decoration: BoxDecoration(
          color: Appcolors.appPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
          fontWeight: FontWeight.bold,
              fontSize:20 ,
            ),
          ),
        ),
      ),
    );
  }
}