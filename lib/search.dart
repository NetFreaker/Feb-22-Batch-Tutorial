import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
            Scaffold.of(context).openDrawer();
          }
        ),
      ),
      body: Column(
        children: [
          Card(
            shape: Border.all(
              color: Colors.blue
            ),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ),
          // ==============================================
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          //==============================
          Card(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          )
        ],
      )
    );
  }
}