import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../regiteration_step2/view/registration_step2_screen.dart';
import '../../widget/registratio_reuse_row.dart';

enum SingingCharacter { Male, Female,OtherTransgender }


class RegisterationStep1Screen extends StatefulWidget {
  const RegisterationStep1Screen({Key? key}) : super(key: key);

  @override
  State<RegisterationStep1Screen> createState() => _RegisterationStep1ScreenState();
}

class _RegisterationStep1ScreenState extends State<RegisterationStep1Screen> {
  SingingCharacter? _character = SingingCharacter.Male;
  final countryPicker =const FlCountryCodePicker();
  CountryCode? countryCode;

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
                  RegistrationReusbleRow(
                    subtitle: "Step 1/3",

                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.028,
                  ),


                  Text("Enter Phone Number",
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Color(0xffFFFFFF)
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.012,
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color(0xff002D5A),
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.white
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Phone Number here...",
                          hintStyle: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),

                        prefixIcon:Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    final code = await countryPicker.showPicker(context: context);
                                    setState(() {
                                      countryCode = code;
                                    });
                                  },
                                  child: Row(

                                    children: [
                                      Container(
                                        child: countryCode != null ? countryCode!.flagImage:null,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0, vertical: 4.0),
                                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                                        decoration: const BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.all(Radius.circular(5.0))),
                                        child: Container(
                                            height: 15,
                                            child: Text(countryCode?.dialCode ?? "+1",
                                            style: TextStyle(
                                              color: Colors.white
                                            ),
                                            )),

                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ),

                    ),
                  ),



                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.028,
                  ),
                  customWidget(
                      title: "ID Card Number",
                      hint: "i.e., (784-1986-6574889-03)"
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.028,
                  ),
                  customWidget(
                      title: "Full Name (As per ID Card)",
                      hint: "Enter Name here..."
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.028,
                  ),
                  Text("Gender",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Color(0xffFFFFFF)
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child:ListTile(
                          contentPadding: EdgeInsets.all(0),
                          title: Row(
                            children: [
                              Radio(
                                fillColor: MaterialStateColor.resolveWith((states) => Color(0Xff0EB4DA)),
                                value: SingingCharacter.Male,
                                groupValue:  _character,
                                onChanged: (SingingCharacter? value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                              Text('Male',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  color: Color(0xffFFFFFF)
                              ),
                              ),

                            ],
                          ),
                          // leading: Radio(
                          //   fillColor: MaterialStateColor.resolveWith((states) => Color(0XFFB63728)),
                          //   value: SingingCharacter.Male,
                          //   groupValue:  _character,
                          //   onChanged: (SingingCharacter? value) {
                          //     setState(() {
                          //       _character = value;
                          //     });
                          //   },
                          // ),
                        ),
                      ),
                      Expanded(
                        child:ListTile(
                          contentPadding: EdgeInsets.all(0),
                          title: Row(
                            children: [
                              Radio(
                                fillColor: MaterialStateColor.resolveWith((states) => Color(0Xff0EB4DA)),
                                value: SingingCharacter.Female,
                                groupValue:  _character,
                                onChanged: (SingingCharacter? value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                              Text('FeMale',
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    color: Color(0xffFFFFFF)
                                ),
                              ),

                            ],
                          ),
                          // leading: Radio(
                          //   fillColor: MaterialStateColor.resolveWith((states) => Color(0XFFB63728)),
                          //   value: SingingCharacter.Male,
                          //   groupValue:  _character,
                          //   onChanged: (SingingCharacter? value) {
                          //     setState(() {
                          //       _character = value;
                          //     });
                          //   },
                          // ),
                        ),
                      ),
                      Expanded(
                        child:ListTile(
                          contentPadding: EdgeInsets.all(0),
                          title: Row(
                            children: [
                              Radio(
                                fillColor: MaterialStateColor.resolveWith((states) => Color(0Xff0EB4DA)),
                                value: SingingCharacter.OtherTransgender,
                                groupValue:  _character,
                                onChanged: (SingingCharacter? value) {
                                  setState(() {
                                    _character = value;
                                  });
                                },
                              ),
                              Text('Other',
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    color: Color(0xffFFFFFF)
                                ),
                              ),

                            ],
                          ),

                        ),
                      ),


                    ],
                  ),





                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.028,
                  ),
                  customWidget(
                      title: "Enter ID Card's Expiry Date",
                      hint: "DD/MM/YYYY",
                    icon: Icon(Icons.date_range,
                    color: Colors.white,
                    size: 15,
                  ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.028,
                  ),
                  customWidget(
                      title: "Enter DOB",
                      hint: "DD/MM/YYYY",
                    icon: Icon(Icons.date_range,
                    color: Colors.white,
                    size: 15,
                  ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.028,
                  ),
                  customWidget(
                      title: "Place of Birth",
                      hint: "Select Location",
                    icon: Icon(Icons.place_outlined,
                    color: Colors.white,
                      size: 15,
                    ),
                  ),



                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.030,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterationStep2Screen()));
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

  customWidget({final title , final hint,final icon})
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
      SizedBox(
        height: MediaQuery.of(context).size.height*0.012,
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

            border: InputBorder.none,
            hintText: hint,
            suffixIcon: icon,
            hintStyle: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
            contentPadding: EdgeInsets.only(left: 19,top: 10,bottom: 12),
          ),


        ),
      ),

    ],);

  }
}
