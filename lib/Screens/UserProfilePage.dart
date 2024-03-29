import 'package:flutter/material.dart';
import 'package:pathok_app/Shared/Const.dart';
import 'package:pathok_app/Shared/Custom_app_bar.dart';

import '../Shared/Book_in_Library.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePage createState() => _UserProfilePage();
}

class _UserProfilePage extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: "User"),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(30),
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Expanded(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset('images/userImage.jpg'),
                      )),
                    ),
                    Container(
                        width: 190,
                        height: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      "Ahmed Mostafa",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5)),
                                  Text(
                                    "Casual Reader",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ]),
                            RaisedButton(
                              padding: EdgeInsets.symmetric(horizontal: 50),
                              textColor: Colors.white,
                              color: AppColors.buttonColor,
                              onPressed: () {
                                // Respond to button press
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Text("Edit Profile"),
                            )
                          ],
                        )),
                  ],
                ),
              ),
              Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                    NumberedActivity(
                      number: 4,
                      activity: "Books",
                    ),
                    NumberedActivity(
                      number: 120,
                      activity: "Following",
                    ),
                    NumberedActivity(
                      number: 401,
                      activity: "Followers",
                    )
                  ])),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                // height: 800,
                // width: 400,
                child: Column(
                  children: <Widget>[_tabSection(context)],
                ),
              ),
            ],
          ),
        ));
  }
}

class NumberedActivity extends StatelessWidget {
  NumberedActivity({this.activity, this.number});

  final String activity;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number.toString(),
          style: TextStyle(
            color: AppColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          activity,
          style: TextStyle(
            fontSize: 15,
            color: AppColors.textColor,
            fontWeight: FontWeight.normal,
          ),
        )
      ],
    );
  }
}

Widget _tabSection(BuildContext context) {
  return DefaultTabController(
    length: 3,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          child: TabBar(tabs: [
            Tab(
                child: Text(
              "Book Shelf",
              style: TextStyle(color: Colors.black),
            )),
            Tab(
                child: Text(
              "Favourite",
              style: TextStyle(color: Colors.black),
            )),
            Tab(
                child: Text(
              "Wishlist",
              style: TextStyle(color: Colors.black),
            )),
          ]),
        ),
        Container(
          //Add this to give height
          height: MediaQuery.of(context).size.height,
          child: TabBarView(children: [
            Container(
              child: SizedBox(
                  // height: 900,
                  child: GridView.count(
                childAspectRatio: 10 / 20,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: [
                  BookInLibrary(
                    imageUrl: "images/pic1.png",
                    bookName: "Be Coming",
                    dominatingColor: Colors.white,
                  ),
                  BookInLibrary(
                    imageUrl: "images/pic1.png",
                    bookName: "Be Coming",
                    dominatingColor: Colors.white,
                  ),
                  BookInLibrary(
                    imageUrl: "images/pic1.png",
                    bookName: "Be Coming",
                    dominatingColor: Colors.white,
                  ),
                  BookInLibrary(
                    imageUrl: "images/pic1.png",
                    bookName: "Be Coming",
                    dominatingColor: Colors.white,
                  ),
                  BookInLibrary(
                    imageUrl: "images/pic1.png",
                    bookName: "Be Coming",
                    dominatingColor: Colors.white,
                  ),
                  BookInLibrary(
                    imageUrl: "images/pic1.png",
                    bookName: "Be Coming",
                    dominatingColor: Colors.white,
                  ),
                  BookInLibrary(
                    imageUrl: "images/pic1.png",
                    bookName: "Be Coming",
                    dominatingColor: Colors.white,
                  ),
                  BookInLibrary(
                    imageUrl: "images/pic1.png",
                    bookName: "Be Coming",
                    dominatingColor: Colors.white,
                  ),
                  BookInLibrary(
                    imageUrl: "images/pic1.png",
                    bookName: "Be Coming",
                    dominatingColor: Colors.white,
                  ),
                ],
              )),
            ),
            Container(
              child: SizedBox(
                  // height: 900,
                  child: GridView.count(
                childAspectRatio: 10 / 20,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: [
                  BookInLibrary(
                    imageUrl: "images/pic2.png",
                    bookName: "Be Coming",
                    dominatingColor: Colors.white,
                  ),
                  BookInLibrary(
                    imageUrl: "images/pic2.png",
                    bookName: "Be Coming",
                    dominatingColor: Colors.white,
                  ),
                  BookInLibrary(
                    imageUrl: "images/pic2.png",
                    bookName: "Be Coming",
                    dominatingColor: Colors.white,
                  ),
                  BookInLibrary(
                    imageUrl: "images/pic2.png",
                    bookName: "Be Coming",
                    dominatingColor: Colors.white,
                  ),
                  BookInLibrary(
                    imageUrl: "images/pic2.png",
                    bookName: "Be Coming",
                    dominatingColor: Colors.white,
                  ),
                  BookInLibrary(
                    imageUrl: "images/pic2.png",
                    bookName: "Be Coming",
                    dominatingColor: Colors.white,
                  ),
                  BookInLibrary(
                    imageUrl: "images/pic2.png",
                    bookName: "Be Coming",
                    dominatingColor: Colors.white,
                  ),
                  BookInLibrary(
                    imageUrl: "images/pic2.png",
                    bookName: "Be Coming",
                    dominatingColor: Colors.white,
                  ),
                  BookInLibrary(
                    imageUrl: "images/pic1.png",
                    bookName: "Be Coming",
                    dominatingColor: Colors.white,
                  ),
                ],
              )),
            ),
            Container(
              child: SizedBox(
                  height: 900,
                  child: GridView.count(
                    childAspectRatio: 10 / 20,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    children: [
                      BookInLibrary(
                        imageUrl: "images/pic5.png",
                        bookName: "Be Coming",
                        dominatingColor: Colors.white,
                      ),
                      BookInLibrary(
                        imageUrl: "images/pic5.png",
                        bookName: "Be Coming",
                        dominatingColor: Colors.white,
                      ),
                      BookInLibrary(
                        imageUrl: "images/pic5.png",
                        bookName: "Be Coming",
                        dominatingColor: Colors.white,
                      ),
                      BookInLibrary(
                        imageUrl: "images/pic5.png",
                        bookName: "Be Coming",
                        dominatingColor: Colors.white,
                      ),
                      BookInLibrary(
                        imageUrl: "images/pic5.png",
                        bookName: "Be Coming",
                        dominatingColor: Colors.white,
                      ),
                      BookInLibrary(
                        imageUrl: "images/pic5.png",
                        bookName: "Be Coming",
                        dominatingColor: Colors.white,
                      ),
                      BookInLibrary(
                        imageUrl: "images/pic5.png",
                        bookName: "Be Coming",
                        dominatingColor: Colors.white,
                      ),
                      BookInLibrary(
                        imageUrl: "images/pic5.png",
                        bookName: "Be Coming",
                        dominatingColor: Colors.white,
                      ),
                      BookInLibrary(
                        imageUrl: "images/pic5.png",
                        bookName: "Be Coming",
                        dominatingColor: Colors.white,
                      ),
                    ],
                  )),
            ),
          ]),
        ),
      ],
    ),
  );
}
