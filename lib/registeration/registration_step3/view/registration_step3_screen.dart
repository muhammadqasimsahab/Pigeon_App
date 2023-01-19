import 'dart:async';

import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import '../../../forgot/forgot_step1/view/forget_step1_screen.dart';
import '../../widget/registratio_reuse_row.dart';


class RegisterationStep3Screen extends StatefulWidget {
  const RegisterationStep3Screen({Key? key}) : super(key: key);

  @override
  State<RegisterationStep3Screen> createState() => _RegisterationStep3ScreenState();
}

class _RegisterationStep3ScreenState extends State<RegisterationStep3Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  RegistrationReusbleRow(
                    subtitle: "Step 3/3",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.040,
                  ),
                  Container(
                    height: 206,
                    width: double.infinity,

                    decoration: BoxDecoration(
                      color: Color(0xff002346),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(60),
                      child: Image.asset("images/scan_card.png",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.030,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 47,right: 47),
                    child: Text("Take a Picture of your ID Card's Front side",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(color: Color(0xffFFFFFF),fontSize: 16),

                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.030,
                  ),
                  Container(
                    height: 206,
                    width: double.infinity,

                    decoration: BoxDecoration(
                        color: Color(0xff002346),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(60),
                      child: Image.asset("images/scan_card.png",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.030,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 47,right: 47),
                    child: Text("Take a Picture of your ID Card's Back side",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(color: Color(0xffFFFFFF),fontSize: 16),

                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.030,
                  ),
                  Text("Make sure the text is Readable",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(color: Color(0xffFFFFFF),fontSize: 13),

                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.030,
                  ),
                  InkWell(
                    onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotStep1Screen()));
                    },
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset('images/continue_button.png'),

                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.070,
                  ),


                ],
              ),
            ),
          ),
        ),
      ),

    );
  }


}
