import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pathok_app/Shared/Const.dart';

import 'Screens/HomePage.dart';
import 'Screens/LibraryPage.dart';
import 'Screens/StorePage.dart';
import 'Screens/UserProfilePage.dart';
import 'Shared/Custom_app_bar.dart';
import 'package:pathok_app/locator.dart';

void main() {
  setUpLocator();
  runApp(AppHome());
}

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pathok eBook Reader',
      theme: ThemeData(
        textTheme: GoogleFonts.ubuntuTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Scaffold(
        //appBar: CustomAppBar(),
        body: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: TabBarView(
              children: [
                HomePage(),
                StorePage(),
                LibraryPage(),
                UserProfilePage(),
              ],
            ),
            bottomNavigationBar: Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                height: 70,
                child: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.home),
                    ),
                    Tab(
                      icon: Icon(Icons.store),
                    ),
                    Tab(
                      icon: Icon(Icons.book),
                    ),
                    Tab(
                      icon: Icon(Icons.supervised_user_circle),
                    )
                  ],
                  labelColor: AppColors.deccolor2,
                  unselectedLabelColor: Colors.grey[500],
                )),
          ),
        ),
      ),
    );
  }
}
