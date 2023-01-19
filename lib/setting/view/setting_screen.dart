import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';




class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }
  bool status = false;
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xff002346),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff002346),
        title: Text("Settings",style: GoogleFonts.poppins(
            fontSize: 18,
            color: Color(0xffFFFFFF)
        ),),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Image.asset("images/side_menu_button.png", height: 20, width: 20),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff1A426B),
                          shape: BoxShape.circle,
                        ),
                        child:  Center(
                          child: Text("M",style: GoogleFonts.poppins(
                              fontSize: 30,
                              color: Color(0xffFFFFFF)
                          ),),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("M. Abdullah",style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Color(0xffFFFFFF)
                          ),),
                          Text("mabd1123@mail.com",style: GoogleFonts.poppins(
                              fontSize: 11,
                              color: Colors.grey

                          ),),

                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Dark Mode",style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Color(0xffFFFFFF)
                      ),),
                      Switch(
                        value: status,
                     onChanged: (value) {
                        setState(() {
                          status = value;
                        });}
                       )

                       ],
                       ),
                  Divider(
                    thickness: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Monthly Limit",style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Color(0xffFFFFFF)
                      ),),
                      Text("AED.19883.34 left",style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.blue
                      ),),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width - 40,
                    lineHeight: 5.0,
                    percent: 0.5,
                    backgroundColor: Colors.grey,
                    progressColor: Colors.blue,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Your AED.20K Limit reset every month",style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.grey
                  ),),
                  Divider(
                    thickness: 2,
                  ),
                  Text("More",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.white
                  ),),
                  SizedBox(
                    height: 10,
                  ),
                 Container(
                   height: 100,
                     width: double.infinity,
                     child: ListView(
                       scrollDirection: Axis.horizontal,
                       children: [
                         Container(
                           height: 100,
                           width: 100,
                           decoration: BoxDecoration(
                               color: Color(0xff1A426B),
                               borderRadius: BorderRadius.circular(10)
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(12.0),
                             child: Image.asset("images/order_your_card.png"),
                           ),
                         ),
                         SizedBox(
                           width: 8,
                         ),
                         Container(
                           height: 100,
                           width: 100,
                           decoration: BoxDecoration(
                               color: Color(0xff1A426B),
                               borderRadius: BorderRadius.circular(10)
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(12.0),
                             child: Image.asset("images/Transactions.png"),
                           ),
                         ),
                         SizedBox(
                           width: 8,
                         ),
                         Container(
                           height: 100,
                           width: 100,
                           decoration: BoxDecoration(
                               color: Color(0xff1A426B),
                               borderRadius: BorderRadius.circular(10)
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(12.0),
                             child: Image.asset("images/add_money.png"),
                           ),
                         ),
                         SizedBox(
                           width: 8,
                         ),
                         Container(
                           height: 100,
                           width: 100,
                           decoration: BoxDecoration(
                               color: Color(0xff1A426B),
                               borderRadius: BorderRadius.circular(10)
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(12.0),
                             child: Image.asset("images/transfer.png"),
                           ),
                         ),


                       ],
                     )),
                  Divider(
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("General Settings",style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Color(0xffFFFFFF)
                        ),),
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.more_horiz,
                            size: 20,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Terms & Conditions",style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Color(0xffFFFFFF)
                        ),),
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Color(0xffFFFFFF),
                          ),
                        ),




                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Hepl & Support",style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Color(0xffFFFFFF)
                        ),),
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Color(0xffFFFFFF),
                          ),
                        ),




                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Contact Us",style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Color(0xffFFFFFF)
                        ),),
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Color(0xffFFFFFF),
                          ),
                        ),




                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Privacy Policy",style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Color(0xffFFFFFF)
                        ),),
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Color(0xffFFFFFF),
                          ),
                        ),




                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Logout",style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Color(0xffFF6A6A)
                        ),),
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                              color: Color(0xffFF6A6A)
                          ),
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
      endDrawer: Drawer(
        backgroundColor: Color(0xff002346),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                       height: 140,
                       width: double.infinity,
                       child: DrawerHeader(
                       child: Container(
                       width: 140,
                       height: 30,
                       child: Padding(
                       padding: const EdgeInsets.all(30.0),
                       child: Image.asset('images/LOGO.png'),
                       ),
                       ),
                       decoration: BoxDecoration(
                       color: Color(0xff002D5A)
                       ),
                       ),),
                Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text("Settings",style: GoogleFonts.poppins(
                       fontSize: 14,
                       color: Color(0xffFFFFFF)
                       ),),
                       InkWell(
                       onTap: (){
                       Navigator.pop(context);
                       },
                       child: Icon(
                       Icons.arrow_forward_ios,
                       size: 16,
                       color: Color(0xffFFFFFF),
                       ),
                       ),




                       ],
                       ),
                       ),
                Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text("Transactions",style: GoogleFonts.poppins(
                       fontSize: 14,
                       color: Color(0xffFFFFFF)
                       ),),
                       InkWell(
                       onTap: (){
                       Navigator.pop(context);
                       },
                       child: Icon(
                       Icons.arrow_forward_ios,
                       size: 16,
                       color: Color(0xffFFFFFF),
                       ),
                       ),




                       ],
                       ),
                       ),
                Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text("Notifications",style: GoogleFonts.poppins(
                       fontSize: 14,
                       color: Color(0xffFFFFFF)
                       ),),
                       InkWell(
                       onTap: (){
                       Navigator.pop(context);
                       },
                       child: Icon(
                       Icons.arrow_forward_ios,
                       size: 16,
                       color: Color(0xffFFFFFF),
                       ),
                       ),




                       ],
                       ),
                       ),
                Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text("Deposit Money",style: GoogleFonts.poppins(
                       fontSize: 14,
                       color: Color(0xffFFFFFF)
                       ),),
                       InkWell(
                       onTap: (){
                       Navigator.pop(context);
                       },
                       child: Icon(
                       Icons.arrow_forward_ios,
                       size: 16,
                       color: Color(0xffFFFFFF),
                       ),
                       ),




                       ],
                       ),
                       ),
                Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text("Langauge",style: GoogleFonts.poppins(
                       fontSize: 14,
                       color: Color(0xffFFFFFF)
                       ),),
                       InkWell(
                       onTap: (){
                       Navigator.pop(context);
                       },
                       child: Icon(
                       Icons.arrow_forward_ios,
                       size: 16,
                       color: Color(0xffFFFFFF),
                       ),
                       ),




                       ],
                       ),
                       ),
                Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text("Privacy Policy",style: GoogleFonts.poppins(
                       fontSize: 14,
                       color: Color(0xffFFFFFF)
                       ),),
                       InkWell(
                       onTap: (){
                       Navigator.pop(context);
                       },
                       child: Icon(
                       Icons.arrow_forward_ios,
                       size: 16,
                       color: Color(0xffFFFFFF),
                       ),
                       ),




                       ],
                       ),
                       ),
                Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text("About Us",style: GoogleFonts.poppins(
                       fontSize: 14,
                       color: Color(0xffFFFFFF)
                       ),),
                       InkWell(
                       onTap: (){
                       Navigator.pop(context);
                       },
                       child: Icon(
                       Icons.arrow_forward_ios,
                       size: 16,
                       color: Color(0xffFFFFFF),
                       ),
                       ),




                       ],
                       ),
                       ),
                Padding(
                       padding: const EdgeInsets.all(12),
                       child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text("Terms & Conditons",style: GoogleFonts.poppins(
                       fontSize: 14,
                       color: Color(0xffFFFFFF)
                       ),),
                       InkWell(
                       onTap: (){
                       Navigator.pop(context);
                       },
                       child: Icon(
                       Icons.arrow_forward_ios,
                       size: 16,
                       color: Color(0xffFFFFFF),
                       ),
                       ),




                       ],
                       ),
                       ),
                Padding(
                       padding: const EdgeInsets.all(12),
                       child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       Text("Help & Support",style: GoogleFonts.poppins(
                       fontSize: 14,
                       color: Color(0xffFFFFFF)
                       ),),
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Color(0xffFFFFFF),
                        ),
                      ),




                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.060,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Logout",style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: Color(0xffFF6A6A)
                      ),),
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: Color(0xffFF6A6A),
                        ),
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
