import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Linkedin extends StatefulWidget {
  @override
  LinkedinState createState() => LinkedinState();
}

class LinkedinState extends State<Linkedin> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    //if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView;
  }

  @override
  Widget build(BuildContext context) => Scaffold(

    appBar: AppBar(
      title: Text("Meu Linkedin"),
      centerTitle: true,
    ),

    body:WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: 'https://www.linkedin.com/in/douglas-castro-853b10177/',
    ),


  );


}
