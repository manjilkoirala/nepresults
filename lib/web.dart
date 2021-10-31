// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';


import 'package:webview_flutter/webview_flutter.dart';





// ignore: use_key_in_widget_constructors
class Views extends StatelessWidget {
  final String url;
   // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
   Views(this.url);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
        backgroundColor: Colors.blueGrey[900],
      ),
     
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,

      ),
    );
  }
}