// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nepresults/devopage.dart';
import 'devopage.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            color: Colors.blueGrey[900],
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 10
                      ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: ExactAssetImage('img/logo.png'),
                      fit: BoxFit.fill
                      
                      ),
                      

                    ),
                    
                  ),
                  Text('Nep Result',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                ],
              ),
            ),

          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('Developer Contacts',style: TextStyle(
              fontSize: 18
            ),),
            trailing: Icon(Icons.arrow_right),
            onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=>DevPage(),));
          }
            ),
            ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit Drawer',style: TextStyle(
              fontSize: 18
            ),),
            trailing: Icon(Icons.arrow_right),
            onTap:(){ Navigator.pop(context);
          }
            )
        ],

      ),
    );
  }
}