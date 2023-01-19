import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../sign_in/view/sign_in_screen.dart';
import '../../sign_up/view/sign_up_Screen.dart';

class WellcomScreen extends StatelessWidget {
  const WellcomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff002346),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(

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
                  height: MediaQuery.of(context).size.height*0.3,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 26,right: 26),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome to Pigeon",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Color(0xffFFFFFF),
                      ),
                      ),
                      Text("Please Login/Sign Up to continue.",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                        },
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Image.asset('images/login.png'),

                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                        },
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Image.asset('images/signup.png'),

                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
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
