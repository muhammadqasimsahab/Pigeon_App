import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../home_folder/widget/model.dart';
import '../../selected_bank/view/selected_bank_screen.dart';
import '../../setting/view/setting_screen.dart';


class TransactionMoneyScreen extends StatefulWidget {
  const TransactionMoneyScreen({Key? key}) : super(key: key);

  @override
  State<TransactionMoneyScreen> createState() => _TransactionMoneyScreenState();
}

class _TransactionMoneyScreenState extends State<TransactionMoneyScreen> {

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
        title: Text("Select Bank",style: GoogleFonts.poppins(
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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color(0xff002D5A),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      cursorColor: Colors.white,
                      style: TextStyle(
                          color: Colors.white
                      ),
                      decoration: InputDecoration(
                        suffixIcon:
                        Container(
                            height: 40,
                            width: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("images/Search_Button_Search_Bar.png"),
                            )),
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                        contentPadding: EdgeInsets.only(left: 19,top: 10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Banks",style: GoogleFonts.poppins(
                        fontSize: 17,
                        color: Colors.white,
                      ),),
                      Icon(Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child:
                        ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return
                                ListTile(
                                  title:InkWell(
                                    onTap: (){
                                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SelectedBank(allDataModel: itemData[index],)));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xff002D5A),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      width: double.infinity,
                                      height: 70,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                height:40,
                                                width: 40,
                                                child: Image.asset(itemData[index].bank_img)),
                                            Text(itemData[index].bank_name,style: GoogleFonts.poppins(
                                              fontSize: 17,
                                              color: Colors.white,
                                            ),),
                                            Icon(Icons.arrow_forward_ios,
                                              size: 16,
                                              color: Colors.white,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                            }),
                      ),
                    ],
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
