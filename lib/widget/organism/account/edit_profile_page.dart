import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/organism/account/edit_profile_screen.dart';


class Edit_profile_page extends StatefulWidget {
  @override
  _Edit_profile_pageState createState() => _Edit_profile_pageState();
}

class _Edit_profile_pageState extends State<Edit_profile_page> {
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
              color: whitecolor,
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(horizontal:10, vertical: 10),
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
                           blurRadius: 50,
                           color: Colors.white.withOpacity(0.5)
                         )
                          ]
                          ),
                        ),
                      )
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            H2text(text:'0'),
                            H2text(text: 'Helpful',)

                          ],
                        ),
                          Column(
                          children: <Widget>[
                            H2text(text:'0'),
                            H2text(text: 'Followers',)

                          ],
                        ),
                          Column(
                          children: <Widget>[
                            H2text(text:'0'),
                            H2text(text: 'Following',)

                          ],
                        )
                      ],
                      
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal:10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: whitecolor,
                      boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Colors.grey.withOpacity(0.5)
                        )
                          ]

                      ),
                      child: Container(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                H2text(
                                  text: 'About Me',
                                ),
                                Spacer(),
                                 InkWell(
                            onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => Edit_profile_screen()));

                            },
                                      child: H1text(
                                        fontweight: FontWeight.bold,
                                        text: 'Add Details', color: Colors.blue,),
                                                                                                                                                                                                                                                                                                     )
                              ],
                            )
                          ],
                        ),
                      )
                  )
                ],
              ),
            ),


          ],
        ),
      ),
      
    );
  }
}