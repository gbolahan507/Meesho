import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meesho/export/organism_export.dart';
import 'package:meesho/widget/organism/account/childern_folder/my_payment_page.dart';
import 'package:meesho/widget/organism/account/childern_folder/notifications.dart';
import 'package:meesho/widget/organism/account/childern_folder/settings_page.dart';




class All_Profile_settings extends StatelessWidget {
  const All_Profile_settings({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        children: <Widget>[
          Profile_content(
            icon: FontAwesomeIcons.university,
            text: 'My Bank Detail',
            onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Bank_page()));

            },
          ),
            Profile_content(
            icon: Icons.share,
            text: 'My Shared Catalogs',
            onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => My_catalog()));

            },
            
          ),  Profile_content(
            icon: FontAwesomeIcons.moneyCheck,
            text: 'My Payment',
            onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => My_payment_page( title: 'My Payment',)));

            },
          ),
       
            Profile_content(
            icon: Icons.settings,
            text: 'Settings',
            onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Settings_page( title: 'Settings',)));

              
            },
          ),    Profile_content(
            icon: FontAwesomeIcons.bell,
            text: 'Notification',
            onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Notification_page( title: 'Notification',)));

            },
          ),    Profile_content(
            icon: Icons.rate_review,
            text: 'Rate Meesho',
            onTap: (){},
          ),
        
         

        ],
      )
    );
  }
}
