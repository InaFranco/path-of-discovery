import 'package:flutter/material.dart';

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