import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'content.dart';
import 'bottomsheet.dart';
import 'dart:math' as math;
import 'Sign_in.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> with SingleTickerProviderStateMixin {
 // AnimationController _controller;

//  double get maxHeight =>
//      MediaQuery
//          .of(context)
//          .size
//          .height;
//  double minHeight = 100;
//
//  void initstate() {
//    super.initState();
//    _controller = AnimationController(vsync: this,
//        duration: Duration(milliseconds: 600));
//  }

//  @override
//  void dispose() {
//    _controller.dispose();
//    super.dispose();
//  }

//  double lerp(double min, double max) =>
//      lerpDouble(min, max, _controller.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff54d7bb),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Container(
                //color:Colors.blue,
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/laundru.png", scale: 1.5,),
                      Text("Laundromat",
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'Montserrat-Bold',
                            color: Colors.white,
//                          letterSpacing: 2.0,
                          )
                      ),
                      SizedBox(height: 10.0,),
                      Text("    Get ready to make your life easy\n"
                          "with single click of app, which makes\n"
                          "        laundry things handle better",
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'Montserrat-Regular',
                            color: Colors.white,
                            //letterSpacing: 2.0,
                          )
                      ),
                      SizedBox(height: 60),
        RaisedButton(
          child: Text("Get Started", style: TextStyle(
            fontFamily: 'Montserrat-Regular',
            fontWeight: FontWeight.bold,
          ),),
          onPressed: () {
            _buildBottomSheet();
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          textColor: Color(0xff54d7bb),
          color: Colors.white,
        ),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }

//  _buildBottomSheet(){
//        final screenHeight = MediaQuery
//        .of(context)
//        .size
//        .height;
//    return AnimatedBuilder(
//      animation: _controller,
//      builder: (context,child){
//        return Positioned(
//          height: lerp(minHeight, maxHeight),
//          left: 0,
//          right: 0,
//          bottom: 0,
//          child: GestureDetector(
//            onTap:_toggle, //it makes the bottom sheet automatically moves up
//            onVerticalDragUpdate: _handleDragUpdate,  //<-- Add verticalDragUpdate callback
//            onVerticalDragEnd: _handleDragEnd,        //<-- Add verticalDragEnd callback
//            child: Container(
//              padding: const EdgeInsets.symmetric(horizontal: 32),
//              decoration: const BoxDecoration(
//                  borderRadius: BorderRadius.vertical(top: Radius.circular(35))
//              ),
//
//              ),
//            ),
//        );
//      },
//    );
//  }
//
//  void _toggle() {
//    final bool isOpen = _controller.status == AnimationStatus.completed;
//    _controller.fling(velocity: isOpen
//        ? -2
//        : 2); // put the bottom sheet in the proper direction
//  }
//
//// from google gesture drag
//  void _handleDragUpdate(DragUpdateDetails details) {
//    _controller.value -= details.primaryDelta /
//        maxHeight; //<-- Update the _controller.value by the movement done by user.
//  }
//
//  void _handleDragEnd(DragEndDetails details) {
//    if (_controller.isAnimating ||
//        _controller.status == AnimationStatus.completed) return;
//
//    final double flingVelocity =
//        details.velocity.pixelsPerSecond.dy /
//            maxHeight; //<-- calculate the velocity of the gesture
//    if (flingVelocity < 0.0)
//      _controller.fling(velocity: math.max(
//          2.0, -flingVelocity)); //<-- either continue it upwards
//    else if (flingVelocity > 0.0)
//      _controller.fling(velocity: math.min(
//          -2.0, -flingVelocity)); //<-- or continue it downwards
//    else
//      _controller.fling(velocity: _controller.value < 0.5
//          ? -2.0
//          : 2.0); //<-- or just continue to whichever edge is closer
//  }

  _buildBottomSheet() {
    showModalBottomSheet(context: context, shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
    ), builder: (BuildContext context) {
      final screenHeight = MediaQuery
          .of(context)
          .size
          .height;
      final _br = Radius.circular(45.0);
      return Container(
        height: screenHeight / 2,
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30,),
              FlatButton.icon(
                padding: EdgeInsets.only(left: 70 , right: 70, top: 10 , bottom: 10),
                icon: Icon(Icons.phone_iphone, color: Color(0xff54d7bb),),
                label: Text("Sign in with mobile", style: TextStyle(
                  fontFamily: 'Montserrat-Regular',
                  fontWeight: FontWeight.bold,
                ),),
                onPressed: () {Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SignIn();
                  },
                )
                );
                },
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
                textColor: Colors.black,
              ),
              SizedBox(height: 30,),
              Text("OR",style:TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontFamily: 'Montserrat-Regular'
              ),),
              SizedBox(height: 30,),
              FlatButton(
                padding: EdgeInsets.only(left: 70 , right: 70, top: 10 , bottom: 10),
                child: Text("f  Sign in with Facebook", style: TextStyle(
                  fontFamily: 'Montserrat-Regular',
                  fontWeight: FontWeight.bold,
                ),),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                textColor: Colors.black,
                color: Colors.blue[900],
              ),
              SizedBox(height: 30,),
              FlatButton(
                padding: EdgeInsets.only(left: 70 , right: 70, top: 10 , bottom: 10),
                child: Text("G   Sign in with Google", style: TextStyle(
                  fontFamily: 'Montserrat-Regular',
                  fontWeight: FontWeight.bold,
                ),),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                textColor: Colors.black,
                color: Colors.blue[300],
              ),
            ],
          ),
        ),
      );
    });
  }
} 