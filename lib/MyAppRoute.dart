import 'package:ass2withlastrev/DetailedRoute.dart';
import 'package:ass2withlastrev/MoviesClass.dart';
import 'package:flutter/material.dart';
import 'MoviesClass.dart';

class MyAppRoute extends StatefulWidget {
  @override
  _MyAppRouteState createState() => _MyAppRouteState();
}

class _MyAppRouteState extends State<MyAppRoute> {

List<Movies> objList = [ new Movies("Joker","22/11/2019",["Scary","Emotional","Drama","Adventure","Scary","Emotional","Drama","Adventured"],9.0,"This Movie is The Best Movie in the history","images/fith.jpg"),
  new Movies("Me Before You","2/1/2018",["Romance","Drama"],7.7,"This Movie is Mo7n Film","images/firstimage.jpg"),
  new Movies("Interstellar","22/8/2012",["Science Fiction","Adventure"],8.2,"This Movie is The Best Movie in Fucking mind","images/secondimage.jpg"),
  new Movies("Welad Rez2","10/9/2019",["Adventure","Action","Comedian"],7.5,"This Movie is Negs bs 7elw","images/thirdimage.jpg"),
  new Movies("El Feel El Azr2","7/9/2019",["Scary","Adventure"],8.9,"This Movie is Fasheeeeee5","images/fourth.jpg"),
  new Movies("Inception","7/2/2010",["Adventure","Fantasy"],7.8,"This Movie is 7elm gwa 7elm","images/seven.jpg"),
  new Movies("The Nun","30/12/2017",["Scary","Adventue"],6.9,"This Movie is Comedian haha","images/sixth.jpg"),
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text('Movie App',style: TextStyle(fontSize: 20),),
      ),

      body: GridView.count(crossAxisCount: 2,
      children: List.generate(objList.length, (i){
            return Padding(padding: EdgeInsets.all(10),

              child: InkWell (
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailedRoute(objList[i],objList) ));
                },
             child:   Container(
                  child: Image.asset(objList[i].imgURL,fit: BoxFit.contain,),
                  //Text(objList[i].name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                )
              ),
            );
          }),
      )
      );


  }
}
