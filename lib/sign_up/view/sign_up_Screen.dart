import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../registeration/registeration_step1/view/registeration_step1_screen.dart';
import '../../sign_in/view/sign_in_screen.dart';
import '../../widget/reuse_row.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool ispassword=false;
  FocusNode? passwordfocus;
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  ReusbleRow(
                    image1: "images/LOGO.png",
                    title: 'Back',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.047,
                  ),
                  Container(
                    child: Image.asset('images/illustration-1.png'),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.02674,
                  ),
                  Text("Sign Up",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Color(0xffFFFFFF)
                    ),
                  ),
                  Text("Please create a New Account to continue",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Color(0xffFFFFFF)
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.022,
                  ),

                  Text("Email Address",
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Color(0xffFFFFFF)
                    ),
                  ),
                  EcoTextField(
                    hintText: "Enter Email Address here...",
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.022,
                  ),
                  Text("Password",
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Color(0xffFFFFFF)
                    ),
                  ),
                  EcoTextField(
                    focusNode: passwordfocus,
                    isPassword: ispassword,
                    hintText: "Enter Password here...",
                    icon: IconButton(onPressed: (){
                      setState(() {
                        ispassword=!ispassword;
                      });
                    },icon: ispassword?Icon(Icons.visibility_off):Icon(Icons.visibility),
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.022,
                  ),
                  Text("conform Password",
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Color(0xffFFFFFF)
                    ),
                  ),
                  EcoTextField(
                    focusNode: passwordfocus,
                    isPassword: ispassword,
                    hintText: "Enter Password here...",
                    icon: IconButton(onPressed: (){
                      setState(() {
                        ispassword=!ispassword;
                      });
                    },icon: ispassword?Icon(Icons.visibility_off):Icon(Icons.visibility),
                    ),
                  ),


                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.030,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterationStep1Screen()));
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

  customWidget({final title , final hint})
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(title,
          style: GoogleFonts.poppins(
              fontSize: 13,
              color: Color(0xffFFFFFF)
          ),
        ),
        Container(
          height: 45,
          decoration: BoxDecoration(
            color: Color(0xff002D5A),
            borderRadius: BorderRadius.circular(10),

          ),
          child: TextField(
            cursorColor: Colors.white,
            style: TextStyle(
                color: Colors.white
            ),
            decoration: InputDecoration(
              hintText: hint,

              border: InputBorder.none,
              hintStyle: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
              contentPadding: EdgeInsets.only(left: 19),
            ),


          ),
        ),

      ],);

  }
}
