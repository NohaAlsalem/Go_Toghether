import 'package:flutter/material.dart';

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
    return Container(
      height: 55,
      width: 300,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(100),topRight:Radius.circular(100) ),
      ),
      child: GestureDetector(
        onTap: fun,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Icon(icon,color: Colors.white,),
            ),
            SizedBox(width: 30,),
            Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

          ],
        ),
      ),
    );
  }
}
