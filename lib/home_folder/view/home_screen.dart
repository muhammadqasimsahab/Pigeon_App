import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../deposite_money/view/deposite_money_withbank_screen.dart';
import '../../notification/view/notification_screen.dart';
import '../../setting/view/setting_screen.dart';
import '../../deposite_money/view/transaction_money_screen.dart';
import '../../transaction/view/send_money_screen.dart';
import '../widget/model.dart';



class RegisterationStep2Screen extends StatefulWidget {
  const RegisterationStep2Screen({Key? key}) : super(key: key);

  @override
  State<RegisterationStep2Screen> createState() => _RegisterationStep2ScreenState();
}

class _RegisterationStep2ScreenState extends State<RegisterationStep2Screen> {

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
        title:
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
            Row(

              children: [
                Image.asset("images/Search.png",
                  height: 20,
                  width: 20,
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
                  },
                  child: Image.asset("images/Notifications.png",
                    height: 20,
                    width: 20,
                  ),
                ),
              ],
            ),



          ],
        ),
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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 126,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 70,
                                height: 16,
                                child: Image.asset('images/color_logo.PNG'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Current Balance",style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: Color(0xff5D5D5D)
                              ),),
                              SizedBox(
                                height: 2,
                              ),
                              Text("493.64 AED",style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  color: Color(0xff232323)
                              ),),
                              SizedBox(
                                height: 9,
                              ),
                              Text("Updated 2 mins ago",style: GoogleFonts.poppins(
                                  fontSize: 11,
                                  color: Color(0xff0EB4DA)
                              ),),
                            ],
                          ),
                          // Deposite Button
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DepositeMoneyScreen()));
                                },
                                child: Container(
                                  width: 140,
                                  height: 42,
                                  decoration: BoxDecoration(
                                    color: Color(0xff0EB4DA),
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Center(
                                    child: Text("Deposit Money",style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SendMoneyScreen()));
                        },
                        child: Container(
                          width: 150,
                          height: 42,
                          decoration: BoxDecoration(
                              color: Color(0xff0EB4DA),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text("Transactions",style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.white,
                            ),),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 42,
                        decoration: BoxDecoration(
                            color: Color(0xff1A426B),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text("My Account",style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.white,
                          ),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 38,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Recent Tranactions",style: GoogleFonts.poppins(
                        fontSize: 17,
                        color: Colors.white,
                      ),),
                      Text("+ AED. 31.97",style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Color(0xffACACAC),
                      ),),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                   Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child:
                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return
                            ListTile(
                              title:
                              Container(
                                height: 60,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height:30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image: AssetImage(itemData[index].imageurl),
                                          )
                                      ),

                                    ),
                                    Container(
                                      width: 200,
                                      height: 50,
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            itemData[index].description_person,
                                            style: GoogleFonts.montserrat(
                                              fontSize: 12,
                                              color: Color(0xffFFFFFF)
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          itemData[index].price,style: TextStyle(fontSize: 10,
                                          color: Color(0xff0EB4DA)
                                        ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          itemData[index].time,style: GoogleFonts.montserrat(
                                            fontSize: 8,
                                            color: Color(0xffF6F8FE),

                                        ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                              subtitle: Divider(
                                thickness: 2,
                              ),
                            );
                        }),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DepositeMoneyScreen()));
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
