import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:us02_03_login_modul/widgets/background-image.dart';
import 'package:us02_03_login_modul/widgets/rounded-button.dart';
import 'package:us02_03_login_modul/widgets/text_field_input.dart';

import '../palette.dart';

class ForgotPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: 'assets/images/login_bg1.jpg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {Navigator.pop(context);},
              icon: Icon(Icons.arrow_back_ios, color: kWhite,),
            ),
            title: Text('Forgot Password', style: kBodyText,), centerTitle: true,),
          body: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.1,),
                    Container(
                      width: size.width * 0.8,
                      child: Text(
                        'Enter your email please. We will send instruction to reset your password',
                        style: kBodyText, textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextInputField(
                      icon: FontAwesomeIcons.envelope,
                      hint: 'Email',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.done,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RoundedButton(buttonName: 'Send')
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

}
