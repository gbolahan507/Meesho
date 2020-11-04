import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/all_input/search_input.dart';
import 'package:meesho/widget/organism/search/popular_search_container.dart';
import 'package:meesho/widget/organism/search/recent_post.dart';
import 'package:meesho/widget/organism/search/search_landing_page.dart';


class Search_Screen extends StatefulWidget {
  @override
  _Search_ScreenState createState() => _Search_ScreenState();


}

class _Search_ScreenState extends State<Search_Screen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey300,
        appBar: buildAppBar(),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
          padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
          margin: EdgeInsets.only(top:10),
          color: whitecolor,
                child: Row(
                  children: <Widget>[
                    H1text(text: 'Upload product image to\n find similar product',),
                    Spacer(),
                    Container(
                    padding: EdgeInsets.symmetric(vertical: 10 , horizontal:10),
                      decoration: BoxDecoration(
                        color: pinkcolor,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: H1text(text: 'Search by images', color: whitecolor,),
                    ),

                  ],
                ),
              ),
              Container(
                color: whitecolor,
                padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.only(top:5),
              child:  Column(
              children: <Widget>[
               Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child: H3text(text: 'Your Recent Searches', fontsize: 15,),
               ),
             SizedBox(height: 20,),
             Recent_post_model(),
                ],
              )
              ),

              Container(
                color: whitecolor,
                margin: EdgeInsets.only(top: 10),
                child: Column(
                
                  children: <Widget>[
                    H2text(text:'Popular Searches'),
                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        Popular_search_container(
                          text: 'Saree',
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Search_landing_page(text: 'Saree',)  ));
                          },
                        ),
                        Popular_search_container(
                          text: 'Kutti',
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Search_landing_page(text: 'Kutti',)  ));

                          },
                        ),
                        Popular_search_container(
                          text: 'jewellery',
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Search_landing_page(text: 'jewellery',)  ));

                          },
                        ),
                        Popular_search_container(
                          text: 'Sarres new collection',
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Search_landing_page(text: 'Sarres new collection',)  ));

                          },
                        ),
                      ],
                    ),

                     Row(
                      children: <Widget>[
                        Popular_search_container(
                          text: 'Dress materials',
                          onTap: (){},
                        ),
                      
                        Popular_search_container(
                          text: 'tops',
                          onTap: (){},
                        ),
                        Popular_search_container(
                          text: 'blouse',
                          onTap: (){},
                        ),
                        Popular_search_container(
                          text: 'kids wear',
                          onTap: (){},
                        ),
                        Popular_search_container(
                          text: 'kurtis',
                          onTap: (){},
                        ),
                      ],
                    ),

                       Row(
                      children: <Widget>[
                        Popular_search_container(
                          text: 'Sarees',
                          onTap: (){},
                        ),
                      
                        Popular_search_container(
                          text: 'Kuti plazo set',
                          onTap: (){},
                        ),
                        Popular_search_container(
                          text: '10ps for women',
                          onTap: (){},
                        ),
                        Popular_search_container(
                          text: 'earring',
                          onTap: (){
                            print('hello');
                          },
                        ),
                      ],
                    ),

                  ],
                ),
              )
          
            ],
          ),

          
        ),
    );
  }




























































  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: whitecolor,
      actions: <Widget>[
        SizedBox(width: 20,),
        Icon(Icons.arrow_back_ios, color: blackcolor,),
        SizedBox(width: 20,),
        Expanded(
          child: Container(
            
            margin: EdgeInsets.symmetric(vertical: 5),
            child: SearchInput(
              fillcolor: grey300,
              hintext: 'Search by production',
            prefixIcon: Icon(Icons.search,),
            suffixIcon: Container(
              child: Container(
                // color: pinkcolor,
              padding: EdgeInsets.only(right: 10),
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                      onTap: (){},
                      child: Icon(Icons.close, color: blackcolor,), ),
                    SizedBox(width: 20,),
                     InkWell(
                      onTap: (){},
                      child: Icon(Icons.camera_alt, color: blackcolor,)),
                  ],
                ),
              ),
            ) 
            ),
          ),
        ),
        SizedBox(width: 10,),

      ],
    );
  }
}