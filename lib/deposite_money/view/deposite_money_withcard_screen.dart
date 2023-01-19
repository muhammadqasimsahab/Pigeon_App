import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../../other_deposite/view/other_deposite_screen.dart';
import '../../setting/view/setting_screen.dart';


class DepositeMoneyWithCardScreen extends StatefulWidget {
  const DepositeMoneyWithCardScreen({Key? key}) : super(key: key);

  @override
  State<DepositeMoneyWithCardScreen> createState() => _DepositeMoneyWithCardScreenState();
}

class _DepositeMoneyWithCardScreenState extends State<DepositeMoneyWithCardScreen> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xff002346),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff002346),
        leading:
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
        centerTitle: true,
        title: Text("Add Card",style: GoogleFonts.poppins(
            fontSize: 18,
            color: Colors.white
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width* 0.27,
                        decoration: BoxDecoration(
                            color: Color(0xff0EB4DA),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset("images/Visa.png"),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width* 0.27,
                        decoration: BoxDecoration(
                            color: Color(0xff1A426B),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset("images/Mastercard.png"),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width* 0.27,
                        decoration: BoxDecoration(
                            color: Color(0xff1A426B),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset("images/Paypal.png"),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("CVV",style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Colors.white,
                  ),),

                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xff002D5A),
                      borderRadius: BorderRadius.circular(10)
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("1234 4567 9863 7545",style: GoogleFonts.poppins(
                            fontSize: 17,
                            color: Colors.white,
                          ),),
                          Icon(Icons.check_box_outlined,
                            size: 20,
                            color: Color(0xff0EB4DA),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("CARD NUMBER",style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.white,
                          ),),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width*0.41,
                            decoration: BoxDecoration(
                                color: Color(0xff002D5A),
                                borderRadius: BorderRadius.circular(10)
                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("18 / 20",style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    color: Colors.white,
                                  ),),
                                  Icon(Icons.check_box_outlined,
                                    size: 20,
                                    color: Color(0xff0EB4DA),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("CVV",style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Colors.white,
                  ),),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.41,
                    decoration: BoxDecoration(
                        color: Color(0xff002D5A),
                        borderRadius: BorderRadius.circular(10)
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("****",style: GoogleFonts.poppins(
                            fontSize: 17,
                            color: Colors.white,
                          ),),
                          Icon(Icons.check_box_outlined,
                            size: 20,
                            color: Color(0xff0EB4DA),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("CARD HOLDER'S NAME",style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Colors.white,
                  ),),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xff002D5A),
                        borderRadius: BorderRadius.circular(10)
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("M. ABDULLAH",style: GoogleFonts.poppins(
                            fontSize: 17,
                            color: Colors.white,
                          ),),
                          Icon(Icons.check_box_outlined,
                            size: 20,
                            color: Color(0xff0EB4DA),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.25,
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
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OtherDepositeScreen()));
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
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset('images/Submit_Button.png'),

                      ),
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
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Settings",style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Color(0xffFFFFFF)
                        ),),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Color(0xffFFFFFF),
                        ),




                      ],
                    ),
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
