

import 'package:flutter/material.dart';
class TextformWidget extends StatelessWidget {
  String hintText;
  final String labelText;
  TextEditingController controller;
   TextformWidget({super.key,
  required this.hintText,
    required this.controller,
     required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),

        Container(padding: EdgeInsets.only(left: 20),

          height: 40,
         width:250 ,

          decoration: BoxDecoration( color: Colors.white,
           borderRadius: BorderRadius.circular(20),
          ),


          child: TextFormField(
            controller: controller,

            decoration: InputDecoration(border: InputBorder.none,
              hintText: hintText,


            ),
          ),
        ),
      ],
    );
  }
}
