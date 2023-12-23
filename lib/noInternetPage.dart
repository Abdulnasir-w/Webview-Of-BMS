import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';


class NoInternetPage extends StatefulWidget {
  @override
  State<NoInternetPage> createState() => _NoInternetPageState();
}

class _NoInternetPageState extends State<NoInternetPage> {
  ConnectivityResult _connectivityResult = ConnectivityResult.none;

  @override
  void initState(){
    super.initState();
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      setState(() {
        _connectivityResult = result;
        if (_connectivityResult != ConnectivityResult.none){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
          //Navigator.of(context).pushReplacement((MaterialPageRoute(context)=> HomeScreen());
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(
                child: CircularProgressIndicator(
              color: Colors.black,
            )),
            SizedBox(height: 5,),
            Center(
              child: Text(
                "No internet connection.\nPlease check your connection.",
                style: TextStyle(
                  fontSize: 16,

                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}