
// ignore_for_file: avoid_unnecessary_containers, import_of_legacy_library_into_null_safe, sized_box_for_whitespace, unnecessary_new

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';


import 'package:nepresults/mydrawer.dart';
import 'package:nepresults/web.dart';

import 'ad_mob_helper.dart';


// ignore: must_be_immutable
class Dashboard extends StatelessWidget {
  final AdmobHelper admobHelper = new AdmobHelper();


   Dashboard({Key? key}) : super(key: key);
    List<String> dashboardoption = [
    'ipo.png',
    'dv.png',
    'see.png',
    'neb.png',
    'tu.png',
    'pu.png',
    'lok.png',
  ];

  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result Nepal'),
        backgroundColor: Colors.blueGrey[900],

      ),
      bottomNavigationBar: Container(
    child: AdWidget(
      ad: AdmobHelper.getBannerAd()..load(),
      key: UniqueKey(),
    ),
    height: 50),
      
      drawer: const MyDrawer(),
      
      body: Column(
        children: [
          Expanded(
            child: Container(
                child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    padding: const EdgeInsets.all(7),
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    children: dashboardoption
                        .map((image) => GridTile(
                            child: GestureDetector(
                                onTap: () {
                                  admobHelper.createInterad();
                                  admobHelper.showInterad();
                                 
                                  if (image == 'ipo.png') {
                                   
                                    
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>  Views('https://iporesult.cdsc.com.np'),));
                                                                  
                                  } else if (image == 'dv.png') {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>  Views('https://dvprogram.state.gov'),));
                                    
                                  } else if (image == 'see.png') {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>  Views('https://see.ntc.net.np'),));
                                  } else if (image == 'neb.png') {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>  Views('https://neb.ntc.net.np'),));
                                    
                                  } else if (image == 'tu.png') {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>  Views('https://tuexam.edu.np'),));
                                    
                                  } else if (image == 'pu.png') {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>  Views('https://www.puexam.edu.np/index.php/find-results'),));
                                   
                                  } else if (image == 'lok.png') {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>  Views('https://psc.gov.np'),));
                                    
                                  } else if (image == 'neb.png') {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>  Views('https://neb.ntc.net.np'),));
                                    
                                  }
                                },
                                child: Image.asset('img/' + image))))
                        .toList()),
              ),
          ),
          
         
        ],
        
      ),
      
    );
  }
}

