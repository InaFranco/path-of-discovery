import 'package:flutter/material.dart';
// import 'package:path_to_discovery/model/item.dart';

void main() {
  runApp(new MaterialApp(
    home: new HomePage(),
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      "/InventoryPage": (BuildContext context) => new InventoryPage(),
    }
  )); //
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
        backgroundColor: Colors.blue
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(
                  Icons.book,
                  color: Colors.brown,
                ),
                iconSize: 70.0,
                onPressed: () {
                  Navigator.of(context).pushNamed("/InventoryPage");
                }
              ),
              new Text("Inventory")
            ],
          ),
        )
      ),
    );
  }
}

class InventoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Inventory"),
        backgroundColor: Colors.blue
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                icon: new Icon(
                  Icons.usb,
                  color: Colors.blue,
                ),
                iconSize: 70.0,
                onPressed: null
              ),
              new Text("ignore")
            ],
          ),
        )
      ),
    );
  }
}