

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Git extends StatefulWidget {
  @override
  GitState createState() => GitState();
}

class GitState extends State<Git> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    //if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView;
  }

  @override
  Widget build(BuildContext context) => Scaffold(

    appBar: AppBar(
      title: Text("Meu GitHub"),
      centerTitle: true,
    ),

    body:WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: 'https://github.com/DouglasCastro21',
    ),


  );


}
