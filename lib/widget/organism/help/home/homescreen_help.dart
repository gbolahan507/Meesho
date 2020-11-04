import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/organism/help/home/help_container.dart';
import 'package:meesho/widget/organism/help/home/helpmodel.dart';
import 'package:meesho/widget/organism/help/home/video_container.dart';



class HomeScreen_help extends StatefulWidget {
  @override
  _HomeScreen_helpState createState() => _HomeScreen_helpState();
}

class _HomeScreen_helpState extends State<HomeScreen_help> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[

          Container(
            color: Colors.lightBlue,
            margin: EdgeInsets.only(top: 10),
            height: 150,
            width: double.infinity,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10, bottom:  10, left: 20),
            child: H2text(text: 'MUST WATCH VIDEO',),
          ),
          // Butto(),
           
           Container(
            //  padding: EdgeInsets.only()
             height: 180,
             color: whitecolor,
             child: ListView.builder(
               itemCount: 4,
               scrollDirection: Axis.horizontal,
               itemBuilder: (context, index){
                 return     Video_container();
               }),
           ),

            Padding(
            padding: const EdgeInsets.only(top: 10, bottom:  10, left: 20),
            child: H2text(text: 'TOP PICKS',),
          ),

          Container(

            padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
            color: whitecolor,
            child:Wrap(
      runSpacing: 15.0,
      children: List<Widget>.generate(helper.length, (index){
        final Help helps = helper[index];
        return Top_Pic_container(helps: helps, 
        image: helps.image, text: helps.text,
        onTap: (){
          print(helper[index].text);
        },
        );
      }),
    ),
            ),

              Padding(
            padding: const EdgeInsets.only(top: 10, bottom:  10, left: 20),
            child: H2text(text: 'LEARN',),
          ),

         
          Container(

            padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
            color: whitecolor,
            child:Wrap(
      runSpacing: 15.0,
      children: List<Widget>.generate(helper.length, (index){
        final Help helps = helper[index];
        return Top_Pic_container(helps: helps, 
        image: helps.image, text: helps.text,
        onTap: (){
          print(helper[index].text);
        },
        );
      }),
    ),
            ),

             Padding(
            padding: const EdgeInsets.only(top: 10, bottom:  10, left: 20),
            child: Row(
              children: <Widget>[
                H2text(text: 'BLOG',),
                Spacer(),
                Container(
                  child: Row(
                    children: <Widget>[
                      H2text(text: 'See all', color: pink300,),
                      SizedBox(width: 10,),
                     Icon(Icons.arrow_forward_ios, color: pink300,)

                    ],
                  )),
              ],
            ),
          ),

           Container(
            //  padding: EdgeInsets.only()
             width: 50,
            // wid
             color: whitecolor,
             child:
           ListView.builder(
               shrinkWrap: true,
               physics: NeverScrollableScrollPhysics(),
               itemCount: 4,
               scrollDirection: Axis.vertical,
               itemBuilder: (context, index){

                 return     Container(
                   color: whitecolor,
                   height: 100,
                   padding: EdgeInsets.symmetric(horizontal: 20),
                   margin: EdgeInsets.only(top: 20),
                   child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Expanded(
                         child: Container(
                           height: double.infinity,
                           child: Image.network('https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80'),
                         ),
                       ),
                       SizedBox(width: 10,),
                       Expanded(
                            child: Column(
                           children: <Widget>[
                             Padding(
                               padding: const EdgeInsets.only(top:5, bottom: 10),
                               child: H4text(text: 'Use Facebook', ),
                             ),
                             H2text(text: 'How to advertise your product on Facebook',),
                            //  SizedBox(height: 38,),
                            Spacer(),
                             H1text(
                               text: '2020 - 04 - 08  10:30' ),

                           ],
                         ),
                       )
                    
                     ]
                   )
                 );
               }
           )
           )
               
           
          





        ],
      ),
    );
  }
}




