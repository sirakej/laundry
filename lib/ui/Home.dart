import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'content.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        fit: StackFit.loose,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*3.4/7,
            //color: Color(0xff50d7bb),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff50d7bb),Color(0xff50d7bb)]          //0xff03fcc8
              ),
            ),
          ),
//          Container(
//            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/2.7),
//            width: double.infinity,
//            height: double.infinity,
//            decoration: BoxDecoration(
////              borderRadius: BorderRadius.only(
////                topLeft: Radius.circular(30),
////                topRight: Radius.circular(30),
////              ),
//              color:Colors.white,
//            ),
//          ),
        Positioned(
          left: 20,
          top: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Hi Mr Anonymous",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
              Text(
                "Get your laundry washed, folded\n and delivered to your door",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      Positioned(
        left: 20,
        top: 250,
        right: 20,
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap:(){ Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> Content()));},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  customCard(
                      "washing-machine.png",
                      "Wash",
                      "1day"),
                  customCard(
                      "dry.png",
                      "Dry",
                      "1day"),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                customCard(
                    "clean.png",
                    "Special",
                    "1day"),
                customCard(
                    "shoe.png",
                    "Others",
                    "1day"),
              ],
            ),
          ],
        ),
      )
        ],
      ),
    );
  }
}

customCard(String imageUrl , String item , String duration){
  return SizedBox(
    height: 168,
    width: 150,
    child: Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/home_images/"+imageUrl,),
          Align(
            alignment: Alignment.bottomLeft,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  item,
                  style: TextStyle(fontSize: 24),
                ),
                Text(duration),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
