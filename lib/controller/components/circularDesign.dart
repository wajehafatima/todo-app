import 'package:flutter/material.dart';
import 'package:untitled/controller/constants/colors/AppColors.dart';

class Circulardesign extends StatelessWidget {
  const Circulardesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          width: 180,
          decoration: BoxDecoration(
            color: Appcolors.AppSecondaryColor.withOpacity(0.5),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(100),
              bottomLeft: Radius.circular(100),
            ),
          ),
        ),
        Container(
          height: 180,
          width: 100,
          decoration: BoxDecoration(
            color: Appcolors.AppSecondaryColor.withOpacity(0.5),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(100),
              bottomRight: Radius.circular(100),
            ),
          ),
        ),
      ],
    );
  }
}