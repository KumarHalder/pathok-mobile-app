import 'package:flutter/material.dart';
import 'package:pathok_app/BottomBar.dart';
import 'package:pathok_app/HomePage.dart';
import 'package:pathok_app/StorePage.dart';
import 'package:pathok_app/LibraryPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
            backgroundColor: Colors.purple[900],
          ),
          body: DefaultTabController(
            length: 4,
            child: new Scaffold(
              body: TabBarView(
                children: [
                  HomePage(),
                  StorePage(),
                  LibraryPage(),
                  new Container(
                    color: Colors.red,
                  ),
                ],
              ),
              bottomNavigationBar: new Container(
                  height: 70,
                  child: new TabBar(
                    tabs: [
                      Tab(
                        icon: new Icon(Icons.home),
                      ),
                      Tab(
                        icon: new Icon(Icons.store),
                      ),
                      Tab(
                        icon: new Icon(Icons.book),
                      ),
                      Tab(
                        icon: new Icon(Icons.supervised_user_circle),
                      )
                    ],
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.grey[500],
                  )),
            ),
          ),
        ));
  }
}
