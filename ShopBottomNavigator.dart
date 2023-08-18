import 'package:flutter/material.dart';
class ShopBottomNavigator extends StatelessWidget {
  const ShopBottomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(     //BottomAppBar is a widget for bottom of the screen

      color: Colors.red,
      shape: CircularNotchedRectangle(),  //این ویجت یک حالت خمیدگی در قسمت زیر action button bar ایجاد می نماید
      notchMargin: 10.0,   // میزان قوس بالا را مشخص می نماید
      clipBehavior: Clip.antiAlias,  //قوس را کمی smooth تر می کند

      child: Container(      //Container is about the containing area in the App (child means the internal area of BottomAppBar)
        height: 60,
        child: Row(  //this big Row and all its internal contety devides the bottom bar into 4 parts and places 4 icons in it
          mainAxisAlignment: MainAxisAlignment.spaceBetween, //the empty area which is defined by -22 in the following lines is brought to center
          children: <Widget>[
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width/2 - 22,  //splits the whole container area into 2 parts, the last -22 allocates an empty area with -22 size
              child: Row(    //splits the half Row into half again
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, //devides the empty area equally between the icons
                children: <Widget>[
                  Icon(Icons.home, color: Colors.blueGrey[600]),
                  Icon(Icons.person, color: Colors.blueGrey[600]),
                ],
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width/2 - 22,  //splits the whole container area into 2 parts, the last -22 allocates an empty area with -22 size
              child: Row(    //splits the half Row into half again
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, //devides the empty area equally between the icons
                children: <Widget>[
                  Icon(Icons.search, color: Colors.blueGrey[600]),
                  Icon(Icons.shopping_basket, color: Colors.blueGrey[600]),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
