import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/controller/components/circularDesign.dart';
import 'package:untitled/controller/components/customButton.dart';
import 'package:untitled/controller/components/textFormField.dart';
import 'package:untitled/controller/constants/colors/AppColors.dart';
import 'package:untitled/view/authScreens/logInScreen.dart';
class Registerationscreen extends StatefulWidget {
  const Registerationscreen({super.key});

  @override
  State<Registerationscreen> createState() => _RegisterationscreenState();
}

class _RegisterationscreenState extends State<Registerationscreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Appcolors.AppbgColor
        ,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            Stack(
              children:[ Circulardesign()
        
        
           ] ),
        
            Column(
              children: [
                Center(
                  child: Text('Welcome OnBoard!', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,),),
                ),
        
                Center(
                  child: Text('Lets help you in completing your tasks', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,),),
                ),
        SizedBox(height: 40,),

                TextformWidget(hintText: 'Enter Email', controller: emailController, labelText: 'Enter your Email'),
                SizedBox(height: 10,),
                TextformWidget(hintText: 'Enter a Strong Password', controller: passWordController,
                    labelText: 'Enter Password'),

                SizedBox(height: 40,),

                CustomButton(buttonText: 'Register', onTap: (){
                  Navigator.push(context,CupertinoPageRoute(builder: (Context)=>Loginscreen()));
                })
              ],
            ),
        
        
        
        
        
             ]),
      ));
  }
}