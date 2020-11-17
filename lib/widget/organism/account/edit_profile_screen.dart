import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/all_input/profile_input.dart';
import 'package:meesho/widget/atom/button_filled.dart';
import 'package:meesho/widget/molecule/productDisplay/decorated_dropdown.dart';
import 'dart:io';





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

        PickedFile _image;
        final _picker = ImagePicker();

        int _selectedindex = 0;




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

                  Container(
                    margin: EdgeInsets.only(top: 30, bottom:50),
                    child: imageprofile()),


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
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: ButtonFilled(
              text: 'SAVE',
              width: double.infinity,
            ),
                ),
          ],
        ),
      ),
      
    );
  }












  
  
  Widget imageprofile(){
    return Center(
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          InkWell(
            onTap: (){
                showModalBottomSheet(context: context, builder: ((builder) => bottomsheet()));
              },
               child: CircleAvatar(
              radius: 50,
              backgroundImage: _image == null ? AssetImage('images/gbolahan2.png') :FileImage(File(_image.path)) 
            ),
          ),
          Positioned(
            bottom: 20,
            right: -5,
            child: InkWell(
              onTap: (){
                showModalBottomSheet(context: context, builder: ((builder) => bottomsheet()));
              },
              child: Icon(Icons.camera_alt, size: 20,)),
            
          )
        ],
      ),
    );
  }






  Widget bottomsheet() {
    return Container(
      margin: EdgeInsets.only(top: 20,),
      height: 150,
      width: double.infinity,
      child:    Column(
        children: <Widget>[

      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
        children: <Widget>[
        H2text(text:'Edit Photo'),
        Spacer(),
        InkWell(
          onTap: (){
                Navigator.pop(context);
              },
                              child: Icon(Icons.close, color: thickblack,))
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                       Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: pink300,
                              radius: 25,
                                 child: IconButton(
                                icon: Icon(Icons.camera_alt),
                                  onPressed: () {
                              takephoto(ImageSource.camera);
                              Navigator.pop(context);
                            },
                                color: Colors.white),
                            ),
                            H2text(text:'camera')
                          ],
                        ),

                        Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 25,
                                 child: IconButton(
                                icon: Icon(Icons.image),
                                onPressed: () {
                                  Navigator.pop(context);
                                  takephoto(ImageSource.gallery);
                                },
                                color: Colors.white),
                            ),
                            H2text(text:'gallery')

                          ],
                        ),
                      ],
                    ),


                    
        ],
      ),
    );
  }



  void takephoto(ImageSource source) async{
    final pickedFile = await _picker.getImage(source: source);
    setState(() {
        _image = pickedFile;
      
    });
  }
}

class Activity_container extends StatelessWidget {
  const Activity_container({
    Key key, this.color, this.text, this.onTap,
  }) : super(key: key);


  final color;
  final text;
  final onTap;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
          
          child:     Container(
                 padding: EdgeInsets.symmetric(vertical: 5, horizontal:10),
                 decoration: BoxDecoration(
                   color: whitecolor,
                   border: Border.all(color: color),
                   borderRadius: BorderRadius.circular(8)
                 ),
                 child: Column(
                   children: <Widget>[
                     H2text(text: text,),
                
              ],
            )
          )
    );
  }
}
























