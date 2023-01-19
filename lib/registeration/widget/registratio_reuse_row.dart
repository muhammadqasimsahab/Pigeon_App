import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationReusbleRow extends StatelessWidget {
  String subtitle;

  RegistrationReusbleRow({Key? key ,required this.subtitle}) : super(key: key);

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
        Text(subtitle,style: GoogleFonts.poppins(
          fontSize: 15,
          color: Color(0xff0EB4DA)
        ),)



      ],
    );
  }
}