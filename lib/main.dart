import 'package:flutter/material.dart';
import 'package:meesho/export/organism_export.dart';
import 'package:meesho/export/others_export.dart';
import 'package:meesho/pages/onboarding/splash_screen.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/organism/account/bank_page.dart';
import 'package:meesho/widget/organism/account/catalog/catalog_landing_page.dart';
import 'package:meesho/widget/organism/account/edit_profile_page.dart';
import 'package:meesho/widget/organism/account/edit_profile_screen.dart';
import 'package:meesho/widget/organism/category/category_screen.dart';
import 'package:meesho/widget/organism/orders/orders_screen.dart';
import 'package:meesho/widget/organism/orders/order_button_container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primarySwatch: Colors.blue,
        
      ),
      home:  NavScreen
      (),
    );
  }
}