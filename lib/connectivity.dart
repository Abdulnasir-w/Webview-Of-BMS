import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'noInternetPage.dart';

class ConnectivityScreen extends StatefulWidget {
  const ConnectivityScreen({super.key});

  @override
  State<ConnectivityScreen> createState() => _ConnectivityScreenState();
}

class _ConnectivityScreenState extends State<ConnectivityScreen> {
  @override
  void initState(){
    super.initState();
    setState(() {
      _checkInternetAndLoadWebsite();
    });

  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
  Future<void> _checkInternetAndLoadWebsite() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      // No internet connection, navigate to another page or show an error message.
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NoInternetPage(),
        ),
      );
    }else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
    }
  }

}
