  import 'package:flutter/material.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/organism/help/home/helpmodel.dart';
  

class Come extends StatefulWidget {
  @override
  _ComeState createState() => _ComeState();
}

class _ComeState extends State<Come> {

  @override
  Widget build(BuildContext context) {
     return Wrap(
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
    );
  }
}


class Top_Pic_container extends StatelessWidget {
  const Top_Pic_container({
    Key key,
    @required this.helps, this.text, this.image, this.onTap
  }) : super(key: key);

  final Help helps;
  final String text;
  final image;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: InkWell(
      onTap: onTap,
        child: Container(
       padding: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              color: grey300,
                 
      borderRadius: BorderRadius.circular(5),
            // border: Border.all(
            //   color: grey300 
              
            // )
          ),
      child: Container(
          child: Column(
            children: <Widget>[
              Container(
               height: 100,
               width: 170,
              child: Image.network((image),
       fit: BoxFit.cover,
      ),
                ),
              Text(text)
            ],
          ),
        ),
      // ),
    ),
      ),
    );
  }
}