import 'package:flutter/material.dart';
import 'package:toproject2/View/Shared/common_Color.dart';

class shapecont extends StatelessWidget {

  final Color color;
  final String text;
  final IconData ? icon;
  final Function() ? fun;
  shapecont({
    required this.text,required this.color,this.icon,this.fun
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 10.0,end: 10.0),
      child: Container(
        height: 55,
       width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20)
          // borderRadius: BorderRadius.only(topLeft: Radius.circular(100),topRight:Radius.circular(100) ),
        ),
        child: GestureDetector(
          onTap: fun,
          child: Center(child: Text(text,style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold,fontSize: 25),)),
        ),
      ),
    );
  }
}
