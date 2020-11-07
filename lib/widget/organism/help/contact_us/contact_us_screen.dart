import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';


class Contact_US_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(20, 200, 20, 20),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              color: whitecolor,
              border: Border.all(
                color: pink300
              ),
            ),
            child: H2text(
              allignment: Alignment.center,
              text: 'Call us at 08062835641',
            )
          ),
          H2text(
            allignment: Alignment.center,
            text: 'Call support timings are from 10am - 7pm',),
           SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: H2text(text: 'Beware of fraudulent calls -Meesho will never call you',),
          ),

           H2text(
            allignment: Alignment.center,
            text: 'asking for your bank/details or OTP',),

        ],
      ),
      
    );
  }
}