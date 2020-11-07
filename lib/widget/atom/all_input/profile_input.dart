import 'package:flutter/material.dart';
import 'package:meesho/util/colors.dart';





class Profile_input extends StatelessWidget {
  const Profile_input({
    Key key, this.controller, this.validator, this.labeltext, this.hinttext,
  }) : super(key: key);


  final controller;
  final validator;
  final labeltext;
  final hinttext;

  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  Theme(
          data: new ThemeData(
    primaryColor: pink300
                    ),
            child: TextFormField(
              validator: validator,
              controller: controller,
            decoration: InputDecoration(
            border: OutlineInputBorder(
            ),
            labelText: labeltext,
            hintText: hinttext,
             ),
              autofocus: false,
             ),
      )
         );
  }
}