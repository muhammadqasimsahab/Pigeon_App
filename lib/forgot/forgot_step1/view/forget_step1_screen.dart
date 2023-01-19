import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../../home_folder/view/home_screen.dart';

class ForgotStep1Screen extends StatelessWidget {
  const ForgotStep1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff002346),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 48,right: 56),
                  child: Container(
                    width: 250,
                    height: 86,
                    child: Image.asset('images/LOGO.png'),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40),
                  child:
                  OTPTextField(
                    length: 6,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 30,
                    style: TextStyle(
                        fontSize: 17,
                      color: Colors.white
                    ),
                    otpFieldStyle: OtpFieldStyle(
                      enabledBorderColor: Colors.white
                    ),
                   textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.underline,


                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 26,right: 26),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Forgot Pin?",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: Color(0xffFFFFFF),
                        ),
                      ),

                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    showMaterialModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(" "),
                                  InkWell(
                                    onTap: (){
                                      Navigator.pop(context);
                                    },
                                    child: Text("Cancel",
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),

                                ],

                              ),
                            ),
                            Text("Biometric Login for PIGEON",
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                            ),

                            SizedBox(
                              height: 6,
                            ),
                            Text("Login using your Biometric Credentials",
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: Color(0xffACACAC),
                              ),
                            ),

                            SizedBox(
                              height: 30,
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterationStep2Screen()));
                              },
                              child: Container(
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Center(
                                    child: Icon(Icons.fingerprint_outlined,

                                      size: 40,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text("Touch the Fingerprint Sensor",
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: Color(0xffACACAC),
                              ),
                            ),

                          ],
                        ),
                      ),
                    );
                  },
                  child: Icon(Icons.fingerprint,
                  size: 30,
                    color: Colors.white,
                  ),
                ),


              ],
            ),
          ),
        ),
      ),

    );
  }

}
