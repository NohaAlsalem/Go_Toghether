import 'package:driverapp/colors.dart';
import 'package:flutter/material.dart';



class textfield extends StatelessWidget {
  final String hint_text;
  final TextInputType input_type;
  final Function()  ? prefixfunction;
  final IconData iconprifex;
  final IconData? suffix;
  final Function(String) ? validate;
  final TextEditingController  ? controller;
  final bool  password ;
  final Function(String) onchange;
  final Function() ? onsubmit;
  final Function? suffixPressd;
  textfield({
    required this.hint_text,
    required this.input_type,
    this.controller,
    required this.onchange,
    this. prefixfunction ,
    required this.iconprifex,
    this.validate,
    this.password=false,
    this.onsubmit,
    this.suffix,
    this.suffixPressd,

  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 10.0,end: 10.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color:primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: TextFormField(
            obscureText:password,
            onChanged:onchange,
            controller: controller,
            onFieldSubmitted: (x)=> onsubmit,

            validator:(x)=> validate!(x!),
            keyboardType: input_type,
            decoration: InputDecoration(
              hintText: hint_text,
              border: InputBorder.none,
              hintStyle: TextStyle(fontSize: 20,color: primaryColor),
              contentPadding: EdgeInsets.only(left: 12,right: 12,bottom: 6,top: 12),
              suffixIcon: suffix != null
                  ? IconButton(
                  onPressed: () {
                    suffixPressd!();
                  },
                  icon: Icon(suffix, color:primaryColor,
                    size: 30,))
                  : null,
              prefixIcon: IconButton(
                onPressed: prefixfunction,
                icon: Icon(
                  iconprifex,
                  color:primaryColor,
                  size: 30,
                ),
              ),
            ),
            style: TextStyle(color: primaryColor),
          ),
        ),
      ),
    );
  }
}
