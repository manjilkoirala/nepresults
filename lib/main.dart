// ignore_for_file: unused_element, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe

import 'package:nepresults/dashboard.dart';

import 'package:nepresults/splashscreen.dart';

import 'ad_mob_helper.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
AdmobHelper.initialize();

 

  
  runApp( ResultApp());
}

class ResultApp extends StatelessWidget {

  


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/home':(context)=> Dashboard()
      
       } );
  }
}

 