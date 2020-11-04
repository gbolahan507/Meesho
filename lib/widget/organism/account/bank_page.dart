import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';
import 'package:meesho/widget/atom/all_input/text_input.dart';
import 'package:meesho/widget/atom/button_filled.dart';
import 'package:meesho/widget/atom/text/h3.dart';


class Bank_page extends StatefulWidget {
  @override
  _Bank_pageState createState() => _Bank_pageState();
}

class _Bank_pageState extends State<Bank_page> {

    var _account_number = TextEditingController();
    var _confirm = TextEditingController();
    var _name = TextEditingController();
    var _code = TextEditingController();

  final _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
       appBar: AppBar(
         leading: BackButton(color: blackcolor,),
        backgroundColor: Colors.white,
        title: H3text(text: 'My Bank Details'),
      ),

      body: SingleChildScrollView(
              child: Container(
          color: grey300,

           padding: EdgeInsets.symmetric(horizontal:10, vertical:10),

          child: Column(
            children: <Widget>[
              Container(
                 color: whitecolor,
                child: Column(
                  children: <Widget>[
                    Container(
                color: Colors.blue,
                      height: 150,
                      width: double.infinity,
                      // child: ,
                    ),

                    Container(
                 margin: EdgeInsets.symmetric(horizontal:15, vertical:10),
                       color: whitecolor,
                      child: Column(
                        children: <Widget>[
                          TextInput(
                            labelText: 'ACCOUNT NUMBER',
                            controller: _account_number,
                            validator: (val) => val.isEmpty ? 'Required!' : null
                          ),
                       

                    SizedBox(height: 30,),

                     TextInput(
                      labelText: 'CONFIRM ACCOUNT NUMBER',
                      validator: (val) => val.isEmpty ? 'Required!' : null,
                      controller: _confirm,

                    ),
                    SizedBox(height: 30,),

                    TextInput(
                      labelText: 'ACCOUNT HOLDERS NAME',
                     validator: (val) => val.isEmpty ? 'Required!' : null,
                     controller: _name,

                    ),
                    SizedBox(height: 30,),

                    TextInput(
                      labelText: 'IFSC CODE',
                    validator: (val) => val.isEmpty ? 'Required!' : null,
                    controller: _code,

                    ),

                    SizedBox(height: 30,),


                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 0, 40, 20),
                      child: ButtonFilled(
                        color: pink300,
                        text: 'SUBMIT',
                      ),
                    )

                     ],
                      ),
                    ),

                   
                  ],
                ),
              ),
              SizedBox(height:5,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: whitecolor,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.info, color: Colors.black,),
                    SizedBox(width: 10,),
                    Expanded(child: H1text(
                      fontsize: 13.0,
                      text: 'Please enter your correct bank details carefullly. They will be used for all refund margins, and bonus payment',)),
                  ],
                )
                
              )
            ],
          ),
        ),
      ),
      
      
    );
  }
}