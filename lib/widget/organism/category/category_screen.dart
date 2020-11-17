import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/text/h3.dart';
import 'package:meesho/widget/atom/appbar_action_widget.dart';
import 'package:meesho/widget/organism/category/category_details.dart';
import 'package:meesho/widget/organism/category/categorymodel.dart';
import 'package:meesho/widget/organism/category/catalog_containers.dart';
import 'package:meesho/widget/organism/search/search_screen.dart';
import 'package:vertical_tabs/vertical_tabs.dart';




class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  int selectedindex = 0;
  // List
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: H3text(text: 'Categories'),
        actions: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                ActionWidget(
                  icon: Icons.search,
                  onTap: () {
   Navigator.push(context, MaterialPageRoute(builder: (context) => Search_Screen()));

                  },
                ),
                ActionWidget(
                  icon: Icons.favorite,
                  onTap: () => print('search'),
                ),ActionWidget(
                  icon: Icons.search,
                  onTap: () => print('search'),

                ),
                
              ],
            ),
          ),


        ],
      ),
      


      body: VerticalTabs(
        disabledChangePageFromContentView: true ,
        direction: TextDirection.ltr,
              //     onSelect: (index){
              //       if(selectedindfaex == index) {
              //         setState(() {
              //      selectedTa: TextStyle(
              //   color: pink300
              // );
              //         });
              //       }
              //     },
      tabsWidth: 100,
      indicatorColor: pink300,
      selectedTabTextStyle: TextStyle(
        color: Colors.red
      ),
              tabTextStyle: TextStyle(
      color: pink300
              ),
      // selectedTabBackgroundColor: pink300,
      // backgroundColor: grey300,
      tabBackgroundColor: whitecolor,
      
      
      contentScrollAxis: Axis.vertical,
      tabs: <Tab>[
        Tab(child: TabDetails( text: 'Popular',icon: Icons.camera_alt, )),
        Tab(child: TabDetails( text: 'Women\n Ethnic',icon: Icons.camera_alt, )),
        Tab(child: TabDetails( text: 'Women\n Western',icon: Icons.camera_alt, )),
        Tab(child: TabDetails( text: 'Men',icon: Icons.camera_alt, )),
        Tab(child: TabDetails( text: 'Kids',icon: Icons.camera_alt, )),
        Tab(child: TabDetails( text: 'Home &\nKitchen',icon: Icons.camera_alt, )),
        Tab(child: TabDetails( text: 'Beauty &\n Health',icon: Icons.camera_alt, )),
        Tab(child: TabDetails( text: 'Jewellery &\nAccessories',icon: Icons.camera_alt, )),
        Tab(child: TabDetails( text: 'Bags &\nFootware',icon: Icons.camera_alt, )),
        Tab(child: TabDetails( text: 'Electronics',icon: Icons.camera_alt, )),

              
      ],
      contents: <Widget>[
        Container(child: Text('NodeJS'), padding: EdgeInsets.all(20)),
        Container(child: Text('NodeJS'), padding: EdgeInsets.all(20)),


        
       Row(
         children: <Widget>[
           Container(
           margin: EdgeInsets.only(top: 20),
           padding: EdgeInsets.all(20),
      color: pink300,
      height: 300,
      width: 300,
      child: GridView.builder(
            itemCount: populars.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index){
            final Popular pops = populars[index];
           return Select_category(
            popular: pops, text: pops.text, image: pops.image, 
      ) ;
             },
        

           )
            ),
         ],
       ),
         Container(
       margin: EdgeInsets.only(top: 20),
       padding: EdgeInsets.symmetric(vertical: 20),
      color: pink300,
      width: 300,
      child: GridView.builder(
        itemCount: populars.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index){
        final Popular pops = populars[index];
       return Select_category(
        popular: pops, text: pops.text, image: pops.image, 
      ) ;
         },
        

       )
        ),
        
        Container(child: Text('HTML 5'), padding: EdgeInsets.all(20)),
        Container(child: Text('HTML 5'), padding: EdgeInsets.all(20)),
        Container(child: Text('HTML 5'), padding: EdgeInsets.all(20)),
        Container(child: Text('HTML 5'), padding: EdgeInsets.all(20)),
        Container(child: Text('HTML 5'), padding: EdgeInsets.all(20)),
        Container(child: Text('HTML 5'), padding: EdgeInsets.all(20))
      
      ],
              ),
                        );
                      }
                    }





class TabDetails extends StatelessWidget {
   TabDetails({ this.text, this.icon});
  final text;
  final icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(icon, ),
              SizedBox(height: 5,),
              Text( text,),
            ],
          ),
        ],
      ),
      
    );
  }
}

            