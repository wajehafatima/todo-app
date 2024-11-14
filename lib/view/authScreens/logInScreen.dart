import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/controller/components/circularDesign.dart';
import 'package:untitled/controller/components/customButton.dart';
import 'package:untitled/controller/components/textFormField.dart';
import 'package:untitled/controller/constants/colors/AppColors.dart';
import 'package:untitled/controller/constants/icons.dart';
import 'package:untitled/view/homeScreen/HomeScreen.dart';
class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Appcolors.AppbgColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Circulardesign(),
            Center(
              child: Text(
                'Welcome Back!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(height: 20,), // Space between widgets
            Column(
              children: [
                Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    child: Image(
                      image: AssetImage(AppIcons.logon),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextformWidget(
                  hintText: 'Enter your Email',
                  controller: emailController,
                  labelText: 'Enter Email',
                ),
                SizedBox(height: 10,),
                TextformWidget(
                  hintText: 'Enter Your Password',
                  controller: passWordController,
                  labelText: 'Enter Password',
                ),
              SizedBox(height: 40,),
              CustomButton(buttonText: 'Login', onTap: (){
                Navigator.push(context,CupertinoPageRoute(builder:( context)=> Homescreen()));
              })


                           ],
            ),
          ],
        ),
      ),
    );

  }
}
