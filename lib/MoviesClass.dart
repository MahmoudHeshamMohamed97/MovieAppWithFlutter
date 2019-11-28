import 'package:flutter/cupertino.dart';

class Movies {
  String name;
  String imgURL;
  double rate;
  String date;
  String description;
  List<String> tags;

  Movies(String name,String date,List<String> tags ,double rate, String description ,String imgURL){
    this.name= name; this.imgURL= imgURL; this.rate= rate; this.date= date; this.description= description; this.tags= tags;
  }

  List<Movies> similarMovies(List<Movies> myList){
    List<Movies> output=[];
    Movies temp;

    for(int i=0; i<this.tags.length;i++){

      for(int j=0; j<myList.length;j++){
        temp= myList[j];

        for(int k=0; k<temp.tags.length;k++){
          if(this.tags[i] == temp.tags[k] )
            output.add(temp);
        }

      }

    }

    return output;
  }

}