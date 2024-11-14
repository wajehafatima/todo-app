import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/controller/components/circularDesign.dart';
import 'package:untitled/controller/constants/colors/AppColors.dart';
import 'package:untitled/controller/constants/icons.dart';
import 'package:untitled/view/authScreens/registerationScreen.dart';
class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Appcolors.AppbgColor,
body: SingleChildScrollView(child:


Stack(
  children: [
    Circulardesign(),
    Column(
      children: [

        Container(
          padding: EdgeInsets.only(top: 150,),
          height:250,
          width: 250,
          child: Image(image: AssetImage(AppIcons.onboard),),
        ),


       Center(child:  Text('Get things done with TODO',
         style:TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),),





          Center(
            child: Container(padding: EdgeInsets.only(left: 20),
              height: 130,
              width: 250,
              child: Center(child:Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed posuere gravida purus id eu condimentum est diam quam. Condimentum blandit diam.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),
                    ),
          ),
           SizedBox(height: 40,),

           InkWell(
             onTap: (){
               Navigator.pushReplacement(context,CupertinoPageRoute(builder: (Context)=>Registerationscreen()));
             },
             child: Container(
               height: 50,
               width: 250,
               decoration: BoxDecoration(
                 color: Appcolors.appPrimaryColor,
                 borderRadius: BorderRadius.circular(5),

               ),

               child:Center(child:  Text('Get Started', style: TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.bold
               ),),
             ),
           ),

           )],
    ),
]),
    )  );
  }
}
