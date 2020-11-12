import 'package:flutter/material.dart';


class BottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final _br = Radius.circular(45.0);
    return Container(
      height: screenHeight * 0.55,
      padding: EdgeInsets.only(left: 20.0 , right: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: _br, topRight: _br),
        color: Colors.white,
      ),
    );
  }
}
