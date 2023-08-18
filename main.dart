import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:store/ShopBottomNavigator.dart';   //we should input the additional .dart files which we have defined and we want to use them in this file
void main() {
  runApp(Store());
}

    //MaterialApp()
    class Store extends StatefulWidget {
      const Store({super.key});

      @override
      State<Store> createState() => _StoreState();
    }

    class _StoreState extends State<Store> {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,  //removes the 'debug' banner from up-right area
          home: Scaffold(

            appBar: AppBar(
              title: Text(
                "Store",
                style: TextStyle(color: Colors.purpleAccent, fontFamily: "Vazir"),
              ),
              centerTitle: true,  //bring the title appbar in the center
              leading: Icon(
                Icons.arrow_back,
                color: Colors.purpleAccent,
              ),
              backgroundColor: Colors.cyanAccent,
              elevation: 0,  //omits the shadowy line below toolbar
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.map, color: Colors.purpleAccent,), onPressed: () {  },
                )
              ],
            ),

            body: Padding(                  //adds a padding arround the border
              padding: EdgeInsets.all(10),  //adds a padding arround the border
              child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10, //space between to adjacent columns
                  mainAxisSpacing: 15,  //space between to adjacent rows
                  children: List.generate(6, (int position){   //6 is the number of cells in the grid list
                    return generateItem();
              }),
              ),
            ),

            bottomNavigationBar: ShopBottomNavigator(),   //this class is defined in ShopBottomNavigator.dart
            floatingActionButton: FloatingActionButton(backgroundColor: Colors.red, child: Icon(Icons.add) ,onPressed: () {  },),  //adds a floating action button
            //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, //brings the floating action button to the center of the bottom bar
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, //Docks the floating action button to the center of the bottom bar
          ),
        );
      }
    }


    //------functions---------
Card generateItem() {
  return Card(
    shape: RoundedRectangleBorder(  //this feature makes the edges of each border circular
      borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    elevation: 4,  //adds a shadow under each cell
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 120,
            width: 120,
            child: Image.network("https://upload.wikimedia.org/wikipedia/en/9/96/Pink_Panther.png"),
          ), Text(
            "Price",
            style: TextStyle(
              fontFamily: "Vazir",
              color: Colors.red[700],
              fontSize: 14.0
            ),
          ), Text(
            "Title",
            style: TextStyle(
                fontFamily: "Vazir",
                color: Colors.blue[700],
                fontSize: 24.0
            ),
          ),
        ],
      ),
    ),
  );
}