import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/list.dart';

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*4/7,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff50d7bb),Color(0xff50d7bb)]
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/2.7),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only( 
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: IconButton(
              onPressed: (){Navigator.pop(context);},
              icon: Icon(Icons.arrow_back,
              color: Colors.white,
                size: 25,
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: 20,
            child: Text("Content",
            style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
          Positioned(
            top: 135,
            left: 20,
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryData.length,
                itemBuilder: (content,index){
                  bool isSelected = false;
                  if(index == 0){
                    isSelected = true;
                  }
                  return Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            width: 68,
                            height: 68,
                            decoration: BoxDecoration(
                              color: isSelected?
                                  Colors.white:
                                  Colors.transparent,
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: Colors.white,
                                width: 1,
                              ),
                              boxShadow: isSelected ?[
                                   BoxShadow(
                                     color: Color(0x14000000),
                                     blurRadius: 10,
                                   )
                                  ]:null
                            ),
                            child: Center(
                              child: Image.asset(categoryData[index].imageUrl),
                            ),
                          ),
                          SizedBox(height:10),
                          Text(
                            categoryData[index].name,
                            style: TextStyle(color:Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(width: 20,),

                    ],
                  );
                }
              ),
            ),
          ),
          Positioned(
            top: 240,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                _customCard("tshirt.png", "T-shirt", "\$0.50", 5),
                _customCard("shirt.png", "Shirt", "\$0.50", 5),
                _customCard("blouse.png", "Blouse", "\$0.50", 5),
                _customCard("hoodie.png", "Hoodie", "\$0.50", 5),
              ],
            ),
          )
        ],
      ),
    );
  }
}

_customCard(String imageUrl, String item, String price, int count){
  return SizedBox(
    height: 190,
    width: 160,
    child: Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(item , style: TextStyle(fontSize: 24),),
              Image.asset("assets/page1/"+imageUrl),
            Text(price),
            Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:Colors.blue,
                    ),
                        borderRadius: BorderRadius.circular(100),
                         color: Colors.white,
                  ),
                  child: Text("-", style: TextStyle(fontSize: 28 , letterSpacing: 3 ,),),
                ),
                Text("$count"),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue
                    ),
                    borderRadius:BorderRadius.circular(100),
                    color:Colors.white,
                  ),
                  child: Text("+", style: TextStyle(fontSize: 28 , letterSpacing: 1),),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}