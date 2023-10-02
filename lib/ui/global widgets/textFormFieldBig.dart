import 'package:flutter/material.dart';
import 'package:lekhny/styles/colors.dart';
import 'package:lekhny/utils/valueConstants.dart';

class TextFormFieldBig extends StatelessWidget {
  //const TextFormFieldBig({Key? key}) : super(key: key);
  double? height;
  String? hintText;
  Icon? prefixIcon;
  Widget? suffixIcon;
  String? Function(String?)? validator;
  TextEditingController? controller;
  TextInputType? keyboard;
  bool? obscureText;
  void Function(String)? onFieldSubmitted;
  FocusNode? focusNode;
  bool? readOnly;
  void Function()? onTap;



  TextFormFieldBig({
    required this.hintText,
    required this.height,
    this.controller,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboard,
    this.obscureText,
    this.onFieldSubmitted,
    this.focusNode,
    this.readOnly,
    this.onTap
  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      readOnly: readOnly??false,
      obscureText: obscureText!,
      controller: controller,
      keyboardType: keyboard,
      focusNode: focusNode,
      //expands: true,
      //maxLines: null,
      //minLines: null,
      style:Theme.of(context).textTheme.bodyText1!.copyWith(
        color: Theme.of(context).textTheme.headline4!.color!
      ),
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
      cursorColor: Theme.of(context).textSelectionTheme.cursorColor,
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          errorStyle: TextStyle(
              color: errorColor,
              fontSize: 12
          ),
          hintText: hintText,
          hintStyle: TextStyle(
              color: Theme.of(context).textSelectionTheme.selectionColor
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          focusedErrorBorder:OutlineInputBorder(
              borderSide: BorderSide(width: 1,color: Theme.of(context).textTheme.headline4!.color!),
              borderRadius: BorderRadius.all(Radius.circular(radiusValue))
          )  ,
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1,color: errorColor),
              borderRadius: BorderRadius.all(Radius.circular(radiusValue))
          ) ,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1,color: Theme.of(context).textTheme.headline4!.color!),
              borderRadius: BorderRadius.all(Radius.circular(radiusValue))
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1,color: Theme.of(context).textTheme.headline4!.color!),
              borderRadius: BorderRadius.all(Radius.circular(radiusValue))
          )
      ),
    );
  }
}
