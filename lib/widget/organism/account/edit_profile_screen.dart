import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/all_input/profile_input.dart';
import 'package:meesho/widget/atom/button_filled.dart';
import 'package:meesho/widget/molecule/decorated_dropdown.dart';




class Edit_profile_screen extends StatefulWidget {
  @override
  _Edit_profile_screenState createState() => _Edit_profile_screenState();
}

class _Edit_profile_screenState extends State<Edit_profile_screen> {

  // final _formKey = new GlobalKey<FormState>();
    var _name = TextEditingController();
    var _city = TextEditingController();
    var _countrycode = TextEditingController();
    var _state = TextEditingController();
    var _address = TextEditingController();
    var _business_name = TextEditingController();
    var _aboutme = TextEditingController();
    var _email = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitecolor,
        leading: BackButton(color: thickblack,),
        title: H2text(text: 'Edit Profile Information',),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
          
            Container(
              padding: EdgeInsets.symmetric(horizontal:20, vertical: 30),
                child: Column(
                  children: <Widget>[
                  Profile_input(
            labeltext: 'Full Name',
            controller: _name,

                  ),

                  SizedBox(height: 30),
             Profile_input(
            labeltext: 'Mobile Number',
            hinttext: '08062835641',
                  ),
                  SizedBox(height: 30),

                  Profile_input(
            labeltext: 'Email ID',
            controller: _email,
                  ),
                  SizedBox(height: 30),


                Decorated_dropDown(),
                  SizedBox(height: 30),

                   Profile_input(
            labeltext: 'About Me',
            controller: _aboutme,
                  ),

                  SizedBox(height: 30),


                   Profile_input(
            labeltext: 'Business Name',
            controller: _business_name,
                  ),

                  SizedBox(height: 30),


            Profile_input(
            labeltext: 'Address',
            controller: _address,
                  ),

                  SizedBox(height: 30),

            Profile_input(
            labeltext: 'State',
            controller: _state,
                  ),

                  SizedBox(height: 30),
                  
            Profile_input(
            labeltext: 'Country pin code',
            controller: _countrycode,
                  ),

                  SizedBox(height: 30),


            Profile_input(
            labeltext: 'City',
            controller: _city,
                  ),
                  SizedBox(height: 30),



                  ],
                ),
              ),
                ButtonFilled(
              text: 'SAVE',
              width: double.infinity,
            ),
          ],
        ),
      ),
      
    );
  }
}





















