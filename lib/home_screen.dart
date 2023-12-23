import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    WebViewController controller = WebViewController()
      ..loadRequest(Uri.parse("https://app.swatmarble.com/"));
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(controller: controller
        ),
      ),
    );
  }
}
