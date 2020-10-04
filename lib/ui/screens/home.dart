import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _iconSize = 20.0;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: Colors.black,
            elevation: 2.0,
            bottom: TabBar(
              labelColor: Theme.of(context).indicatorColor,
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.restaurant,
                  size: _iconSize,
                  color: Colors.white,
                )),
                Tab(
                    icon: Icon(
                  Icons.local_drink,
                  size: _iconSize,
                  color: Colors.deepOrangeAccent,
                )),
                Tab(
                    icon: Icon(
                  Icons.favorite,
                  size: _iconSize,
                  color: Colors.red,
                )),
                Tab(
                    icon: Icon(
                  Icons.fastfood,
                  size: _iconSize,
                  color: Colors.amber,
                )),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(5.0),
          child: TabBarView(
            // Placeholders for content of the tabs:
            children: [
              Center(
                  child: Image(
                image: AssetImage('images/food.jpg'),
              )),
              Center(
                  child: Image(
                image: AssetImage('images/drinks.jpg'),
              )),
              Center(
                  child: Image(
                image: AssetImage('images/Paneer.jpg'),
              )),
              Center(
                  child: Image(
                image: AssetImage('images/FastFood.jpg'),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
