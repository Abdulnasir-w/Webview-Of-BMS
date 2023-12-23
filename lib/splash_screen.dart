import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bms/connectivity.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    splash();
  }
  void splash() async {
    await Future.delayed(Duration(seconds : 7));
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ConnectivityScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("assets/logo.png",
                height: 200,
                width: 200,
              ),
            ),
            Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    "Billboard Management \n System",
                    textAlign: TextAlign.center,
                    textStyle: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xff255282)),

                  ),
                ],
                isRepeatingAnimation: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
