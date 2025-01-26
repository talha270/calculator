import'package:flutter/material.dart';
import 'package:get/get.dart';

Color blackbuttoncolor=Colors.white12;
Color orangebuttoncolor=Colors.orange;
Color lightwhitebuttoncolor=Colors.white30;

customfloatingbutton({icon=null,required VoidCallback callback,required text,textcolor=Colors.white,required backgroundcolor}){
  return

    GestureDetector(
      onTap: () {
        callback();
      },
      child: Container(
        height: Get.width*0.19,
        width: Get.width*0.19,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundcolor,
          boxShadow: [
            BoxShadow(color: backgroundcolor)
          ],
        ),
        child: Center(
          child: icon!=null?icon:Text(text,style: TextStyle(fontSize: 25,color: textcolor),
        ),
      ),
    ));
}
