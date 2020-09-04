import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About us"),

        
      ),

      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(50.0) ,
               
            color: Colors.white,
            child: Text("This is the app where you can find the shortcut for the Micro Soft Software",

            style: TextStyle(fontSize: 20.0, color: Colors.black),
          ),),

          RaisedButton(
            color: Colors.tealAccent,
            child: Text("Go back", style: TextStyle(color: Colors.black)),
            onPressed: (){
             Navigator.pop(context);

          })
          
        ],
      ),
    );
  }
}