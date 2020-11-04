import 'package:flutter/material.dart';
import 'package:meesho/util/colors.dart';


Widget SearchInput({
  validator,
  hintext,
  focusedBorder,
  fillcolor,
  enableBorder,
  onchanged,
  filled,
  suffixIcon,
  haeding,
  height,
  obsecuretext,
  fontweight,
  prefixIcon,
  
  TextEditingController controller,
}) {
  return Container(
    child: TextFormField(
      onChanged: onchanged,
      controller: controller,
      textAlign: TextAlign.justify,
      validator: validator,
      obscureText: obsecuretext ?? false,
      decoration: InputDecoration( 
        hintText: hintext,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
       borderRadius: BorderRadius.circular(5.0),
       borderSide: BorderSide(color: Colors.grey, width: 2.0),
     ),
     contentPadding: EdgeInsets.symmetric(horizontal: 24,),
     enabledBorder: OutlineInputBorder(
       borderRadius: BorderRadius.circular(5.0),
       borderSide: BorderSide(color: Colors.grey, width: 0.5),
     ),
     focusedBorder : OutlineInputBorder(
       borderRadius: BorderRadius.circular(5.0),
       borderSide: BorderSide(color: Colors.grey, width: 0.5),
     ),
        hintStyle: TextStyle(
            color:greycolor,  fontSize: 16, fontWeight: FontWeight.normal, fontFamily: 'OpenSans' ),
        fillColor: fillcolor?? Color(0xFFF2F2F2),
        filled: true
      ),
    ),
  );
}