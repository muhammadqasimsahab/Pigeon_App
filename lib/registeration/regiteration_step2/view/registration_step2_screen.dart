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
import '../../registration_step3/view/registration_step3_screen.dart';
import '../../widget/registratio_reuse_row.dart';


class RegisterationStep2Screen extends StatefulWidget {
  const RegisterationStep2Screen({Key? key}) : super(key: key);

  @override
  State<RegisterationStep2Screen> createState() => _RegisterationStep2ScreenState();
}

class _RegisterationStep2ScreenState extends State<RegisterationStep2Screen> {
  int start = 30;
  bool wait = false;
  String  buttonName = "send";
  TextEditingController phoneController = TextEditingController();
  // Authclass authClass = Authclass();
  String verificationIdFinal = "";
  String smsCode = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff002346),
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
                    subtitle: "Step 2/3",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.070,
                  ),
                  otpField(),
                  SizedBox(height: 17,),
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(text: "Resend Code",
                          style: GoogleFonts.poppins(color: Color(0xffFFFFFF),fontSize: 15),
                        ),
                        TextSpan(text: " (00:$start",
                          style: GoogleFonts.poppins(color: Color(0xffFFFFFF),fontSize: 13),
                        ),
                        TextSpan(text: "S)",
                          style: GoogleFonts.poppins(color: Color(0xffFFFFFF),fontSize: 13),
                        ),
                      ]
                  )),
                  SizedBox(height: 37,),

                  Padding(
                    padding: const EdgeInsets.only(left: 47,right: 47),
                    child: Text("We've sent a Verification Code to 050 79775637",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(color: Color(0xffFFFFFF),fontSize: 13),

                    ),
                  ),
                  SizedBox(height: 138),

                 Row(

                      children: [
                        Text( "Not your Phone Number?",
                          style: GoogleFonts.poppins(color: Color(0xffFFFFFF),fontSize: 15),
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterationStep3Screen()));
                          },
                          child: Text(" CHANGE HERE!",
                            style: GoogleFonts.poppins(color: Color(0xff0EB4DA),fontSize: 13),
                          ),
                        ),

                      ]
                  ),


                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
  void startTimer(){
    const onsec = Duration(seconds: 1);
    Timer timer = Timer.periodic(onsec, (timer) {
      if(start == 0)
      {
        setState(() {
          timer.cancel();
          wait = false;
        });
      }else{
        setState(() {
          start--;
        });
      }
    });
  }
  Widget otpField(){
    return OTPTextField(
      length: 6,
      width: MediaQuery.of(context).size.width - 34,
      fieldWidth: 45,
      otpFieldStyle: OtpFieldStyle(
        backgroundColor: Color(0xff0EB4DA),

      ),
      style: TextStyle(
          fontSize: 17,color: Colors.white
      ),
      textFieldAlignment: MainAxisAlignment.spaceAround,
      fieldStyle: FieldStyle.underline,
      onCompleted: (pin) {
        print("Completed: " + pin);
        setState(() {
          smsCode = pin;
        });
      },
    );
  }
  // Widget textField(){
  //   return Container(
  //     width: 65,
  //     height: 65,
  //     decoration: BoxDecoration(
  //       color: Color(0xff0EB4DA),
  //       borderRadius: BorderRadius.circular(15),
  //     ),
  //     child:
  //     TextFormField(
  //       controller: phoneController,
  //       style: TextStyle(color: Colors.white,fontSize: 17),
  //       keyboardType: TextInputType.number,
  //       decoration: InputDecoration(
  //           border: InputBorder.none,
  //           hintText: "Enter your phone Number",
  //           hintStyle: TextStyle(color: Colors.white54,fontSize: 17),
  //           contentPadding: EdgeInsets.symmetric(vertical: 19,horizontal: 8),
  //           prefixIcon: Padding(
  //             padding: const EdgeInsets.symmetric(vertical: 14,horizontal: 15),
  //             child: Text("(+92)",style: TextStyle(color: Colors.white,fontSize: 17),),
  //           ),
  //           suffixIcon: InkWell(
  //             onTap: wait ? null:() async {
  //               startTimer();
  //               setState(() {
  //                 start = 30;
  //                 wait = true;
  //                 buttonName= "Resend";
  //               });
  //              // await authClass.verifyPhoneNumber("+92 ${phoneController.text}", context,setData);
  //             },
  //             child: Padding(
  //               padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
  //               child: Text(
  //                 buttonName,
  //                 style: TextStyle(color: wait?Colors.grey: Colors.white,fontSize: 17,
  //                     fontWeight: FontWeight.bold
  //                 ),),
  //             ),
  //           )
  //       ),
  //     ),
  //   );
  // }
  void setData(String verificationId){
    setState(() {
      verificationIdFinal = verificationId;
    });
    startTimer();
  }

}
