import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toproject2/View/Shared/common_Color.dart';

void NavigatTo(context, widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

Widget defaultButton({
  double height = 50.0,
  double width = 100.0,
  Color background = Colors.teal,
  bool isUpperCase = true,
  double radius = 10.0,
  required Function func,
  required String text,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Container(
        width: width,
        height: height,
        child: MaterialButton(
          elevation: 100.0,
          onPressed: () => func(),
          child: Text(
            isUpperCase ? text.toUpperCase() : text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(radius),
          gradient: const LinearGradient(begin: Alignment.topRight, colors: [
            primaryColor,
            secondaryColor,
            // Color.fromRGBO(54, 121, 138, 1),
            // Color.fromRGBO(51, 110, 127, 1)
          ]),
        ),
      ),
    );

Widget defaltFormField({
  double width = 300.0,
  double height = 50.0,
  required TextEditingController controller,
  TextInputType? type,
  Function? onSubmit,
  // Function?onChanged,
  required Function(String) validate,
  IconData? prfix,
  IconData? suffix,
  String? lable,
  bool isPassword = false,
  Function? suffixPressd,
  double radius = 10.0,
  String? hintlable,
}) =>
    Padding(
      padding:  const EdgeInsetsDirectional.only(start: 10.0,end: 10.0),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,

        validator: (x) => validate(x!),
        keyboardType: type,
        onFieldSubmitted: (x) => onSubmit!(x),
        //onChanged:(x)=>onChanged!(x),
        decoration: InputDecoration(
          labelText: lable,
          hintText: hintlable,
          hintStyle: TextStyle(fontSize: 20, color: primaryColor),
          contentPadding:
              EdgeInsets.only(left: 12, right: 12, bottom: 6, top: 12),
          border: InputBorder.none,
          // border:OutlineInputBorder(),

          prefixIcon: prfix!=null?
          IconButton(
            icon:Icon(prfix,
            color: primaryColor,
            size: 30,),
                onPressed: (){},
          ):null,
          suffixIcon: suffix != null
              ? IconButton(
                  onPressed: () {
                    suffixPressd!();
                  },
                  icon: Icon(
                    suffix,
                    color: primaryColor,
                    size: 30,
                  ))
              : null,
        ),
        style: TextStyle(color: primaryColor),
      ),
    );

Widget defaultconainer({
  double width = 20.0,
  double height = 50.0,
  double radius = 30.0,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(radius),
      ),
    );

String? token;
void printFullText(String text) {
  final pattern = RegExp('.{1,800}');
  pattern.allMatches(text).forEach((element) {
    print(element.group(0));
  });
}
