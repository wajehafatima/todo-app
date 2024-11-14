import 'package:flutter/material.dart';
import 'package:untitled/controller/components/circularDesign.dart';
import 'package:untitled/controller/components/listViewWidget.dart';
import 'package:untitled/controller/constants/colors/AppColors.dart';
import 'package:untitled/controller/constants/icons.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.AppbgColor,
      body:SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(padding:EdgeInsets.only(bottom: 100),
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Appcolors.appPrimaryColor,
                  ),
        
                ),
                Positioned(top: 0,
                    left:0,
                    child: Circulardesign()),
                Positioned(top: 130,left:(MediaQuery.of(context).size.width-250),
                    child: CircleAvatar(backgroundImage: AssetImage(AppIcons.profile),
                  radius: 50,
                )),
        
                Positioned(top: 245,left: 130,
                    child: Text('Welcome Wajeha!', style: TextStyle(
                      color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),)),
        
        
              ]
              ,
            ),
            SizedBox(height: 40,),
            Center(child: Container(
              height: 130,
              width: 130,
              child: Image(image: AssetImage(AppIcons.clock),),
            ),),
        
            Container(
              height: MediaQuery.of(context).size.height*0.5,
              padding: EdgeInsets.all(20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('Tasks List',style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,

                ),),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Daily Tasks',style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),),
                      IconButton(onPressed: (){}, icon:Icon(Icons.add,color: Color(0xff56C5B6),) )  ],
                  ),


                ],
              ),
            )
          ],
        ),
      ),
      

    );
  }
}
