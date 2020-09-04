import 'package:flutter/material.dart';
import '../data/data.dart';
import "aboutPage.dart";
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';


class MyHomePage extends StatelessWidget {
      


  @override
 

  Widget build(BuildContext context) {
   //greatActors();
   
   
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[DrawerHeader(
            padding: EdgeInsets.all(0)  ,
            child: Container(
             color: Colors.tealAccent,
             
             
            child: Center(
              child: Text("Ms word Guide", style: TextStyle(color:Colors.black, fontSize: 20.0)),
            )
            ),
            ),
             ListTile(
               leading: Icon(Icons.home),
               title: Text("Home"),
               onTap: (){
                 Navigator.pop(context);

               },
             ),

             ListTile(
               leading: Icon(Icons.info_outline),
               title: Text("Information"),
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder:(context){
                           return AboutPage();

                 }));

               },
             ),


             ListTile(
               leading: Icon(Icons.star),
               title: Text("http://youtube.com"),
               onTap: (){
                

               },
             ),

             ListTile(
               leading: Icon(Icons.share),
               title: Text("Share"),
               onTap: (){
                 Share.share("Hi i am using this wanderfull app i request you to use it  https://play.google.com/store/apps/details?id=com.creatormyapps.msword.shortkeys");


               },
             ),
            ],

        ),
      ),
      appBar: AppBar(
        title: Text("ms Words"),
        actions: <Widget>[ IconButton(icon: Icon(Icons.info_outline), 

        
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (contaxt){
            return AboutPage();
          }
          
          ));    //push is a Constructor
        },
        
        )
        
        
        ],
      ),
     body: ListView.separated(
       separatorBuilder: (context, indext){
         return Divider(
           thickness: 2.0,
         );
       },
       itemCount: data.length,
       itemBuilder: (context,  index){
        
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.tealAccent,
            radius:  22.5,
            child: Text(
              "${index + 1}",
            ),
          ),
          title: Text(data[index]["key"], style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(data[index] ["use"]),


        );

       },
       
       )
    );
  }
}


