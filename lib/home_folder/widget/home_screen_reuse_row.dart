import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenReusbleRow extends StatelessWidget {

  HomeScreenReusbleRow({Key? key ,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 16,
              color: Color(0xffFFFFFF),
            ),
          ),
          Container(
            width: 70,
            height: 16,
            child: Image.asset('images/LOGO.png'),
          ),
          Row(

            children: [
              Image.asset("images/Search.png",
                height: 20,
                width: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset("images/Notifications.png",
                height: 20,
                width: 20,
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: (){
                },
                child: Image.asset("images/side_menu_button.png",
                  height: 20,
                  width: 20,
                ),
              ),
            ],
          ),



        ],
      );
  }
}