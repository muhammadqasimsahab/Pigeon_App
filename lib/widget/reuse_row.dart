import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusbleRow extends StatelessWidget {
  final  image1;
  String title;

  ReusbleRow({Key? key , this.image1,required this.title,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
        SizedBox(
          height: 16,
          width: 5,
        ),


      ],
    );
  }
}