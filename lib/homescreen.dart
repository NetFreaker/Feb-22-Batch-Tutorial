import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            }
          ),
          backgroundColor: Colors.red,
          title: Text('HomeScreen'),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 200,
                      width: 200,
                      child:
                          Image.asset('assets/images/a.jpg', fit: BoxFit.fill)),
                  Text('abcd', style: GoogleFonts.abhayaLibre(fontSize: 50.0))
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 200,
                      width: 200,
                      child:
                          Image.asset('assets/images/b.jpg', fit: BoxFit.fill)),
                  Text('bcdf',
                      style: GoogleFonts.encodeSansCondensed())
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.network(
                          'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2002&q=80')),
                  Text('cdfe', style: GoogleFonts.bellotaText(fontSize: 50.0))
                ],
              ),
            ],
          ),
        )
    );
  }
}

class CustomDrawerTiles extends StatelessWidget {
  final IconData icon;
  final String text;
  CustomDrawerTiles(this.icon, this.text);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        print(text);
      },
      child: Card(
        child: Container(
          padding: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            // border: Border(
            //   bottom: BorderSide(color: Colors.grey.shade300)
            // )
          ),
          child: Row(
            children: [
              Icon(icon),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(text),
              )
            ]
          ),
        ),
      ),
    );
  }
}