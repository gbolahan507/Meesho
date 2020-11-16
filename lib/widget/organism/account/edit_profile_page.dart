import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/organism/account/childern_folder/aboutme.dart';
import 'package:meesho/widget/organism/account/childern_folder/user_stat.dart';
import 'package:meesho/widget/organism/account/edit_profile_screen.dart';


class Edit_profile_page extends StatefulWidget {
  @override
  _Edit_profile_pageState createState() => _Edit_profile_pageState();
}

class _Edit_profile_pageState extends State<Edit_profile_page> {

    PickedFile _image;
  final _picker = ImagePicker();

int _selectedindex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitecolor,
        leading: BackButton(
          color: thickblack,
        ),
        title: H2text(text: 'Profile',),
        actions: <Widget>[
          InkWell(
            onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => Edit_profile_screen()));

            },
                      child: Padding(
              padding: const EdgeInsets.only(right:20),
              child: H1text(
                fontweight: FontWeight.bold,
                text: 'EDIT PROFILE', color: Colors.blue,),
            ),
          )
        ]
      ),
      body: Container(
        
        color: grey300,
        child: Column(
          children: <Widget>[
            Container(
                  decoration: BoxDecoration(
            color: whitecolor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
            BoxShadow(
            offset: Offset(10, 10),
            blurRadius: 5,
            color: Colors.grey.withOpacity(0.5)
          )
          ]
          ),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                     margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
                        // margin: EdgeInsets.symmetric(horizontal:10, vertical: 10),
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.lightGreen
                        ),
                        // child: ,
                      ),
                      Positioned(
                        //  bottom: 5,
                        child: Container(
                          margin: EdgeInsets.only(top: 100, right: 20, left: 20),
                          height: 120,
                          decoration: BoxDecoration(
                            color: whitecolor,
                            borderRadius: BorderRadius.circular(8),
                           boxShadow: [
                           BoxShadow(
                           offset: Offset(10, 10),
                           blurRadius: 5,
                           color: Colors.grey.withOpacity(0.5)
                         )
                          ]
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: <Widget>[
                                imageprofile(),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: 
                                  <Widget>[
                                    H2text(text: 'Gbolahan', fontweight: FontWeight.bold,),
                                    H1text(text: 'Ibadan',),

                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                  UserStat(),

                  SizedBox(height: 20,),

                  About_me(),
                  
                  SizedBox(height: 10,),
              
                ],
              ),
            ),
                 Container(
                   
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: H2text(text: 'My ACTIVITY',),
                        ),

                        SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Activity_container(
                        text: 'REVIEWS',
                        color: _selectedindex ==1 ? pink300 : whitecolor,
                        onTap: (){
                          setState(() {
                            _selectedindex = 1;
                          });
                        },
                      ),
            

                   Activity_container(
                        text: 'VIDEOS',
                        color: _selectedindex ==2 ? pink300 : whitecolor,
                        onTap: (){
                             setState(() {
                            _selectedindex = 2;
                          });

                        },
                  ),

                   Activity_container(
                        text: 'WISHLIST',
                        color: _selectedindex ==3 ? pink300 : whitecolor,
                        onTap: (){
                            setState(() {
                            _selectedindex = 3;
                          });

                        },
                  ),

                   Activity_container(
                        text: 'SHARED',
                        color: _selectedindex ==4 ? pink300 : whitecolor,
                        onTap: (){
                             setState(() {
                            _selectedindex = 4;
                          });
                        },
                  ),
                          ],
                        ),

              //              _index == 1 ? Category_Page(): (_index==2 ? Video() : Cart()),
              //  SizedBox(height: 5,),
                        Container(
                          margin: EdgeInsets.only(top: 50, left:  150),
                          child: Center(
                            child: _selectedindex == 1 ? Reviews() : 
                        (_selectedindex ==2 ? Videos() : (_selectedindex ==3 ? WishList() : Shared())),
                          ),
                        )
                        

                       
                      ],
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











class Reviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     child: H2text(text: 'Reviews' ,  fontsize: 24.0,),
    );
  }
}

class Videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: H2text(text: 'Videos' ,  fontsize: 24.0,),
    );
  }
}

class WishList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: H2text(text: 'WishList' ,  fontsize: 24.0,),
    );
  }
}

class Shared extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: H2text(text: 'Shared' ,  fontsize: 24.0,),
    );
  }
}