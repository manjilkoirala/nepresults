// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ad_mob_helper.dart';


class DevPage extends StatefulWidget {
  const DevPage({ Key? key }) : super(key: key);

  @override
  State<DevPage> createState() => _DevPageState();
}

class _DevPageState extends State<DevPage> {
  final double coverHeight=280;
  final double profileHeight =144;
  @override
  Widget build(BuildContext context) {

    

    return Scaffold(

      appBar: AppBar(
        title:const Text('Developer Contact'),
        backgroundColor: Colors.blueGrey[900],
      ),
      bottomNavigationBar: Container(
    child: AdWidget(
      ad: AdmobHelper.getBannerAd()..load(),
      key: UniqueKey(),
    ),
    height: 50),
      
      body:Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                 newMethod(),
                 buildContent(),
              ],
            ),
          ),
          
        ],
        
      ),
      
    );

  }

 Widget newMethod() {
   final top=coverHeight-profileHeight;
   return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
        Container(
          margin: EdgeInsets.only(bottom: profileHeight/2),
          child: Coverpage()),
        Positioned(
          top: top,
          
          child: ProfileImage())
        
      ],);
 }



  // ignore: non_constant_identifier_names
  Widget Coverpage()=> Container(

       color: Colors.grey,
       child: Image.asset('img/logo.png',height: coverHeight-80,)
       
  );

  // ignore: non_constant_identifier_names
  Widget ProfileImage()=> CircleAvatar(
    radius: profileHeight / 2,
    backgroundColor: Colors.white,
    child: CircleAvatar(
      radius: profileHeight / 2 - 6,
      backgroundColor: Colors.grey.shade800,
      backgroundImage:const AssetImage('img/manjil.jpg'),
    ),
  );

  Widget buildContent()=> Column(
   // ignore: prefer_const_literals_to_create_immutables
   children: [
     const SizedBox(height: 8,),
      Text('Manjil Koirala',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black),
      ),
      const SizedBox(height: 8,),
      Text('-Developer'),
      const SizedBox(height: 8,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // buildsocialicon(FontAwesomeIcons.facebook),
         CircleAvatar(
radius: 25,
child:Material(shape: CircleBorder(),
clipBehavior: Clip.hardEdge,
color: Colors.transparent,
child: InkWell(
  onTap: (){
    launch('https://www.facebook.com/tech.learnhere');
  },
  child: Center(
  child: Icon(FontAwesomeIcons.facebook, size: 32,),
),
),
  )),
          const SizedBox(width: 12,),
          // buildsocialicon(FontAwesomeIcons.instagram),
          CircleAvatar(
radius: 25,
child:Material(shape: CircleBorder(),
clipBehavior: Clip.hardEdge,
color: Colors.transparent,
child: InkWell(
  onTap: (){
    launch('https://www.instagram.com/techlearnhere/');
  },
  child: Center(
  child: Icon(FontAwesomeIcons.instagram, size: 32,),
),
),


  )),
          const SizedBox(width: 12,),
          // buildsocialicon(FontAwesomeIcons.twitter),
          CircleAvatar(
radius: 25,
child:Material(shape: CircleBorder(),
clipBehavior: Clip.hardEdge,
color: Colors.transparent,
child: InkWell(
  onTap: (){
   launch('https://twitter.com/ManjilHere');
  },
  child: Center(
  child: Icon(FontAwesomeIcons.twitter, size: 32,),
),
),


  )),
          
          const SizedBox(width: 12,),
          // buildsocialicon(FontAwesomeIcons.youtube),
           CircleAvatar(
radius: 25,
child:Material(shape: CircleBorder(),
clipBehavior: Clip.hardEdge,
color: Colors.transparent,
child: InkWell(
  onTap: (){
    launch('https://youtube.com/techlearnhere');
  },
  child: Center(
  child: Icon(FontAwesomeIcons.youtube, size: 32,),
),
),


  )),
          const SizedBox(width: 12,),
        ],
      )
   ],
    
    );
  
  Widget buildsocialicon(IconData icon) => CircleAvatar(
radius: 25,
child:Material(shape: CircleBorder(),
clipBehavior: Clip.hardEdge,
color: Colors.transparent,
child: InkWell(
  onTap: (){},
  child: Center(
  child: Icon(icon, size: 32,),
),
),


  ));
  
 
}

