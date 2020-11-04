import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/all_input/search_input.dart';
import 'package:meesho/widget/atom/text/h2.dart';
import 'package:meesho/widget/organism/account/catalog/imagebox.dart';
import 'package:meesho/widget/organism/homepage/tabs/all_home_tab.dart';
import 'package:meesho/widget/organism/homepage/tabs/tab_children/select_category_page.dart';
import 'package:meesho/widget/organism/homepage/product/home_page_product_container.dart';
import 'package:meesho/widget/organism/homepage/tabs/home_tab_button.dart';
import 'package:meesho/widget/organism/homepage/appbar/homepage_appbar.dart';
import 'package:meesho/widget/organism/homepage/model/homepage_model.dart';
import 'package:meesho/widget/organism/homepage/product/homepage_product_landing_page.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

    int _index ;


  var _search = TextEditingController();
  
   
  @override
  Widget build(BuildContext context) {
       return new Scaffold(
      body: new NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            new SliverAppBar(
              backgroundColor: Colors.white,
              title: HomeAppbar(),
              floating: true,
              pinned: true,
              snap: true,
              bottom:PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: Container(
                padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
                child: SearchInput(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.camera),
                   hintext: 'Try seeer or kuti or search by product code',
                   controller: _search
                    ),
                  )
                  ),
                                          ),
                        ];
                      },

                      
             body: SingleChildScrollView(
                            child: Container(
                 color: grey300,
                 child: Column(
                     children: <Widget>[
                       
                      



                      Container(
                        margin: EdgeInsets.only(top: 5),
                        color: whitecolor,
          child: Column(
            children: <Widget>[


               Three_steps_headimg(),
               SizedBox(height:  20,),

               Container(
                 padding: EdgeInsets.symmetric(horizontal: 20),
                 child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                    
                      children: <Widget>[
                        Home_tab_button(
                          height: _index ==1 ?  120 : 100,
                          left: 0,
                          right: 10,
                          image: 'images/play.png',
                          numb: '1',
                          content: 'Learn to earn\nMeesho',
                          ontap: (){
                            setState(() {
                              _index = 1;
                              print('hello');
                              
                            });
                          },
                          color: _index ==1 ? purplecolor :   grey300 ,
                          // padding:  _index == 1 ? EdgeInsets.only(top:40, left: 10, bottom:10, right: 10) : EdgeInsets.only(top:10, left: 10, bottom:10, right: 10)
                        
                        ),
                          Home_tab_button(
                          height: _index ==2 ?  120 : 100,

                            left: 0,
                            right: 0,
                          image: 'images/play.png',
                          numb: '2',
                          content: 'Learn to earn\nMeesho',
                          ontap: (){
                            setState(() {
                              _index = 2;
                            });
                          },
                          color: _index ==2 ? purplecolor : grey300,
                          // padding:  _index == 2 ? EdgeInsets.only(top:20, left: 10, bottom:10, right: 10) : EdgeInsets.symmetric(horizontal:10, vertical: 10)
                        
                        ),
                         Home_tab_button(
                          height: _index ==3 ? 120 : 100,

                           left: 10.0,
                           right: 0.0,
                          image: 'images/play.png',
                          numb: '3',
                          content: 'Learn to earn \nMeesho',
                          ontap: (){
                            setState(() {
                              _index = 3;
                            });
                          },
                          color: 
                          
                           _index == 3 ? purplecolor : grey300,
                          // padding:  _index == 3 ? EdgeInsets.only(top:20, left: 10, bottom:10, right: 10) : EdgeInsets.symmetric(horizontal:10, vertical: 10)
                        
                        ),



                      ],
                    ),
               ),

               SizedBox(height: 10,),

                  _index == 1 ? Category_Page(): (_index==2 ? Video() : Cart()),
               SizedBox(height: 5,),



                  
                     

            ],
          ),
        ),

                     Container(
                      //  color: whitecolor,
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[

                                Video_button(
                  text: 'Worried\nabout product',
                 onTap: (){}
                                ),
                                Video_button(
                 text: 'Can you trust\nMeessho?',
                 onTap: (){}
                                )


                              ],
                            ),
                          )
                        ],
                      ),
                       ),

           ListView.builder(
               physics: NeverScrollableScrollPhysics(),
               shrinkWrap: true,
              itemBuilder: (context, index){
                final Homepage home = homepages[index];
                return 
               Homepage_page_product_container(
                   homepage: home,
                   firstproductimage: home.firstproductimage,
                   secondproductimage: home.secondproductimage,
                   thirdproductimage: home.thirdproductimage,
                   generalbrandname: home.generalbrandname,
                   formerprice: home.formerprice,
                   currentprice: home.currentprice,
                   percentage: home.percentage,
                   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage_landing_page(homepage: homepages[index],) ))
            
               );
                   
      },
      itemCount: homepages.length
      ),
           
      
                     ],
                   ),
               ),
             )
     
      ),
    );

  }
}

class Three_steps_headimg extends StatelessWidget {
  const Three_steps_headimg({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
              color: whitecolor,
           //    boxShadow: [
      
             
              ),
              
              child: Row(
                children: <Widget>[
                  Container(
         margin: EdgeInsets.fromLTRB(24, 10, 24, 10),
                     height: 50,
                     width: 50,
                     decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.blue
                     ),
                     ),

              SizedBox(width: 10,),

               H2text(
              text: '3 steps to start your business', color: Colors.black, fontweight: FontWeight.bold,
                ),

                ],
              ),
            );
  }
}

class Video_button extends StatelessWidget {
  const Video_button({
    Key key, this.text, this.onTap,
  }) : super(key: key);


  final text;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
          child: Container(
          
        decoration: BoxDecoration(
          color: whitecolor,
          border: Border.all(color: purplecolor)
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: <Widget>[
            Image.asset('images/play.png', width: 30,),
            SizedBox(width: 10,),
            H2text(text: text, ),
          ],
        ),
      ),
    );
  }
}






