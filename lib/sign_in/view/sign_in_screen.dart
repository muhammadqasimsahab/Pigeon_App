
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../registeration/registeration_step1/view/registeration_step1_screen.dart';
import '../../widget/reuse_row.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

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
                    child: Image.asset('images/illustration.png'),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.02674,
                  ),
                  Text("Login",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Color(0xffFFFFFF)
                    ),
                  ),
                  Text("Please Enter Credentials to Login",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Color(0xffFFFFFF)
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.022,
                  ),
                  Text("Username",
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Color(0xffFFFFFF)
                    ),
                  ),
                  EcoTextField(
                    hintText: "Enter User here...",
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
}


class EcoTextField extends StatefulWidget {
  String? hintText;
  TextEditingController? controller;
  String? Function(String?)? validate;
  Widget? icon;
  bool isPassword;
  bool check;
  final TextInputAction? inputAction;
  final FocusNode? focusNode;
  EcoTextField({
    this.hintText,
    this.controller,
    this.validate,
    this.isPassword=false,
    this.icon,
    this.check=false,
    this.inputAction,
    this.focusNode,
  });
  @override
  State<EcoTextField> createState() => _EcoTextFieldState();
}
class _EcoTextFieldState extends State<EcoTextField> {

  bool visible=false;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 45,
        decoration: BoxDecoration(
         // color: Color(0xffF6F8FE),

          borderRadius: BorderRadius.circular(20),
          // border: Border.all(width: 0.05,)

        ),
        child: TextField(
          style: TextStyle(
            color: Colors.white
          ),
          cursorColor: Colors.white,
          focusNode: widget.focusNode,
          textInputAction: widget.inputAction,
          obscureText: widget.isPassword==false?false:widget.isPassword,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
            fillColor: Color(0xff002D5A),
            contentPadding: EdgeInsets.only(left: 21,top: 18,bottom: 14),
            hintText: widget.hintText??"hint Text",
            suffixIcon: widget.icon,
            focusedBorder: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
                borderRadius: BorderRadius.circular(10)
            ),
            enabledBorder:  OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
                borderRadius: BorderRadius.circular(10)
            ),

            filled: true,
          ),
        )
    );
  }
}



