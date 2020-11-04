import 'package:flutter/material.dart';


class Recent_post_model extends StatefulWidget {
  @override
  _Recent_post_modelState createState() => _Recent_post_modelState();
}

class _Recent_post_modelState extends State<Recent_post_model> {

  
List <String> buttons = [
  'jewellery',
  'dress materials',
  'top',
  'kurti'
];



  @override
  Widget build(BuildContext context) {
    return 
    ListView.builder(
    physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
      itemCount: buttons.length,
      itemBuilder: (context, index) {
        return buildText(index,) ;
      } 
      );
  }

  Widget buildText(int index,) {
    return Container(
        decoration: BoxDecoration(
        ),
        margin: EdgeInsets.only(bottom: 10),
        child: Column(
    children: <Widget>[

         Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
     child: Row(
       children: <Widget>[
         Icon(Icons.rotate_left),
         Text((buttons[index])),
       ],
     ),
         ),

         Divider()
      
    ],
        
        )
        
        
      );
    
  }
}