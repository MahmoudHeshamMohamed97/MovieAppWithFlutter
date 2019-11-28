import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MoviesClass.dart';

class DetailedRoute extends StatefulWidget {
  final Movies obj;
  final List<Movies> myList;

  DetailedRoute(this.obj, this.myList);

  @override
  _DetailedRouteState createState() => _DetailedRouteState();
}

class _DetailedRouteState extends State<DetailedRoute> {

  List<Movies> similerResult=[];

  @override
  void initState() {
    super.initState();
    similerResult= widget.obj.similarMovies(widget.myList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
          children: <Widget>[
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2.5,
                child: Image.asset(
                  widget.obj.imgURL,
                  fit: BoxFit.fitWidth,
                )),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.obj.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),

            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.favorite,
                    size: 27,
                    color: Colors.red,
                  ),
                ),
                Text(widget.obj.rate.toString(),style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(widget.obj.date.toString(),style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.obj.description,style: TextStyle(fontSize: 20),),
            ),

            Container(
              height: MediaQuery.of(context).size.height/5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: widget.obj.tags.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int i) {
                      return FlatButton(
                        onPressed: () {},
                        textColor: Colors.red,
                        child: Text(
                          widget.obj.tags[i],
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(20)),
                      );
                    }),
              ),
            ),
            Container(
              height: 330,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
               itemCount: similerResult.length,
               itemBuilder: (context,int i){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                    child:  Column(
                      children: <Widget>[
                        Image.asset( similerResult[i].imgURL ),
                        Text(similerResult[i].name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    ),
                  );
               },
              ),
            )

          /*  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                child: ListView.builder(
                    itemCount: widget.obj.tags.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int i) {
                      return FlatButton(
                        onPressed: () {},
                        textColor: Colors.red,
                        child: Text(
                          widget.obj.tags[i],
                          style: TextStyle(fontSize: 10),
                        ),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10)),
                      );
                    }),
              ),
            ),*/
/*
            Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(widget.obj.imgURL,fit: BoxFit.fitWidth,),
              ),
            ),
*/
/*
            Padding(
              padding: const EdgeInsets.only(bottom: 10,left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget.obj.name,style: TextStyle(fontSize: 30),),
                  Row(
                    children: <Widget>[
                      Icon(Icons.favorite,size: 27,color: Colors.red,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(widget.obj.rate.toString(),style: TextStyle(fontSize: 17),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(widget.obj.date,style: TextStyle(fontSize: 17),),
                      ),
                    ],
                  ),
                  Text(widget.obj.description,style: TextStyle(fontSize: 20),),

*/
/*
                  Row(
                    children: widget.obj.tags.map((String data) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: FlatButton(
                          textColor: Colors.red,
                          child: Text(data,style: TextStyle(fontSize: 20),),
                          shape: RoundedRectangleBorder(side: BorderSide(color: Colors.red)
                              ,borderRadius: BorderRadius.circular(20)),
                        ),
                      );
                    }).toList(),
                  ),
*/ /*


                  */
/*ListView.builder(
                      itemBuilder: (context,int i){
                  return Row(
                    children: <Widget>[
                      Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset(myObj.similarMovies(widget.obj, widget.myList)[i].imgURL),
                            Text(myObj.similarMovies(widget.obj, widget.myList)[i].name,style: TextStyle(fontSize: 20),),
                          ],
                        ),
                      ),
                    ],
                  );
                  },
                  //scrollDirection: Axis.horizontal,
                  ),
*/ /*


                ],
              ),
            ),
*/
          ],

      ),
    );
  }
}
