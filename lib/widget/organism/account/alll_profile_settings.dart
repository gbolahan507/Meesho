import 'package:flutter/material.dart';
import 'package:meesho/export/organism_export.dart';




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
            icon: Icons.home,
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
            icon: Icons.attach_money,
            text: 'My Payment',
            onTap: (){},
          ),  Profile_content(
            icon: Icons.settings,
            text: 'Refer and earn',
            onTap: (){},
          ),  Profile_content(
            icon: Icons.alarm,
            text: 'Challenges',
            onTap: (){},
          ),
            Profile_content(
            icon: Icons.rate_review,
            text: 'Lottery Spins',
            onTap: (){},
          ),
              Profile_content(
            icon: Icons.rate_review,
            text: 'Enter Referral code',
            onTap: (){},
          ),    Profile_content(
            icon: Icons.rate_review,
            text: 'Meesho Community',
            onTap: (){},
          ),    Profile_content(
            icon: Icons.rate_review,
            text: 'Business Logo',
            onTap: (){},
          ),    Profile_content(
            icon: Icons.settings,
            text: 'Settings',
            onTap: (){},
          ),    Profile_content(
            icon: Icons.alarm,
            text: 'Notification',
            onTap: (){},
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
