import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Wikipedia extends StatefulWidget {
  @override
  WikipediaState createState() => WikipediaState();
}

class WikipediaState extends State<Wikipedia> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    //if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView;
  }

  @override
  Widget build(BuildContext context) => Scaffold(

    appBar: AppBar(
      title: Text("Mortal Kombat"),
      centerTitle: true,
    ),

    body:WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: 'https://pt.wikipedia.org/wiki/Mortal_Kombat',
    ),


  );


}
