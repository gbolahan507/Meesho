import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/export/molecule_export.dart';
import 'package:meesho/util/colors.dart';



class Settings_page extends StatefulWidget {

   final String title;
   Settings_page({ this.title});
  @override
  _Settings_pageState createState() => _Settings_pageState();
}

class _Settings_pageState extends State<Settings_page> {
     bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: thickblack,),
        title: H3text(text: widget.title,),
        backgroundColor: whitecolor,
      ),

      body: Container(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: <Widget>[
              H2text(text: 'Share Settings',),
              SizedBox(height: 20,),
              
              Row(
                children: <Widget>[
                H2text(text: 'Include Text as Image While Sharing',),
                Spacer(),
              CustomSwitchs(
                isSwitched: isSwitched,
                onpressed : (value){
                    setState(() {
                   isSwitched = value;
                    });
                  }
                
                )
                ],
              ),
              SizedBox(height: 20,),

              
              Row(
                children: <Widget>[
                H2text(text: 'Include Logo in Images While Sharing',),
                Spacer(),
                 CustomSwitchs(
                isSwitched: isSwitched,
                onpressed : (value){
                    setState(() {
                   isSwitched = value;
                    });
                  }
                )
                ],
              ),

            ],
          ),
        ),
      )
    );
  }
}


