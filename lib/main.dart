import 'package:demo2/favorites.dart';
import 'package:demo2/homescreen.dart';
import 'package:demo2/profile.dart';
import 'package:demo2/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MainScreen());
  }
}

class MainScreen extends StatefulWidget {

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

 int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    Widget screens(int index) {
      if(index == 0) {
        return HomeScreen();
      }
      if(index == 1) {
        return Search();
      }
      if(index == 2) {
        return Favorites();
      }
      if(index == 3) {
        return Profile();
      }
      return HomeScreen();
    }

    void onIconsTapped(int index){
      setState(() {
        currentIndex = index;   
        print(currentIndex);     
      });
    }

    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange
              ),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.symmetric(
                vertical: 20.0, horizontal: 30.0
              ),
              child: Text('Header', style: TextStyle(
                fontSize: 24.0
              ),)
            ),
            CustomDrawerTiles(Icons.notification_important, 'Notifications'),
            CustomDrawerTiles(Icons.settings, 'Settings')
          ]
        ),
      ),
      body: screens(currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onIconsTapped,
          unselectedItemColor: Colors.blue,
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'
            )
          ],
        ),
    );
  }
}


