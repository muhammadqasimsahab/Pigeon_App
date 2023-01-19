import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../../wellcom/view/wellcom_screen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {


  void initState() {
    super.initState();
    Timer(Duration(seconds: 10),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                WellcomScreen()
            )
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Center(
          child:Padding(
            padding: const EdgeInsets.only(left: 48,right: 56),
            child: Container(
              width: double.infinity,
              height: 204,
              child: Image.asset('images/pieon_gif.gif'),
            ),
          ),
        ),
      ),
    );
  }
}
