import 'package:flutter/material.dart';
import 'package:meesho/util/colors.dart';




Widget TextInput({
  validator,
  name,
  focusedBorder,
  fillcolor,
  enableBorder,
  onchanged,
  labelText,
  filled,
  suffixIcon,
  haeding,
  obscureText,

  TextEditingController controller,
}) {
  return Container(
    child: Column(
      children: <Widget>[
        TextFormField(
          
          onChanged: onchanged,
          controller: controller,
          textAlign: TextAlign.justify,
          validator: validator,
          obscureText: obscureText?? false,
          decoration: InputDecoration(  
            labelText: labelText,
            suffixIcon: suffixIcon,
          enabledBorder: enableBorder ?? UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey ,width: 1 ) ),
          focusedBorder: focusedBorder ?? UnderlineInputBorder(borderSide: BorderSide(color: pink300, width: 2) ),
          contentPadding: EdgeInsets.only(left: 0, bottom: 0),

            hintStyle: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
            fillColor: Colors.white,
            filled: false,
            hintText: name,
             labelStyle:  TextStyle(
                color: pink300, fontSize: 15, fontWeight: FontWeight.w500, ),
          ),
      
        ),
      ],
    )
  );
}
