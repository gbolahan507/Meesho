import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/export/molecule_export.dart';
import 'package:meesho/export/organism_export.dart';
import 'package:meesho/widget/atom/text/h3.dart';

class My_catalog extends StatefulWidget {
  @override
  _My_catalogState createState() => _My_catalogState();
}

class _My_catalogState extends State<My_catalog> {
  TabController _tabController;

  // @override
  // void initState() {
  //   _tabController = new TabController(length: 3, vsync: this);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
          child: Scaffold(

            appBar: AppBar(
            backgroundColor: Colors.white,
            title: H3text(text: 'My Catalogs',),
            actions: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    ActionWidget(
                      icon: Icons.search,
                      onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Wellcome_Screen()));
                      }
                    ),

                    ActionWidget(
                      icon: Icons.favorite,
                      onTap: () => print('search'),
                    ),
                  ],
                ),
              ),
            ],
              bottom: TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.black,
              tabs: [
               Text('WISHLIST', ),
               Text('WISHLIST', ),
              
             
            ],

                      )
            ),

            body:  TabBarView(
      children: <Widget>[
              WishList(),
              Scaffold()


      ],
            )
      ),
    );
  }
}