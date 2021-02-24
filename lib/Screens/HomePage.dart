import 'package:flutter/material.dart';
import 'package:pathok_app/Shared/Custom_app_bar.dart';

import '../Shared/Continue_reading_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Home',
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Continue Reading",
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    FlatButton(onPressed: null, child: Text("View All"))
                  ])),
          SizedBox(
            height: 175.0,
            child: ListView(
              // This next line does the trick.

              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ContinueReadingCard(
                  bookName: "Dark World",
                  authorName: "Bella Mackie",
                  imageUrl: "images/pic1.png",
                ),
                ContinueReadingCard(
                  bookName: "The Possible World",
                  authorName: "Bella Mackie",
                  imageUrl: "images/pic2.png",
                ),
              ],
            ),
          ),

          //sdds
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Library",
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    FlatButton(onPressed: null, child: Text("View All"))
                  ])),
          Container(
              // color: Colors.blue,
              height: 150.0,
              child: ListView(
                // This next line does the trick.

                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                      // color: Colors.red,
                      padding: const EdgeInsets.all(0.0),
                      child: FittedBox(
                        child: Image.asset('images/BookCover-1.png'),
                        fit: BoxFit.contain,
                      )),
                  Container(
                      child: FittedBox(
                    child: Image.asset('images/BookCover-2.png'),
                    fit: BoxFit.fill,
                  )),
                  Container(
                      child: FittedBox(
                    child: Image.asset('images/BookCover-3.png'),
                    fit: BoxFit.fill,
                  )),
                  Container(
                      child: FittedBox(
                    child: Image.asset('images/BookCover-4.png'),
                    fit: BoxFit.fill,
                  )),
                  Container(
                      child: FittedBox(
                    child: Image.asset('images/BookCover.png'),
                    fit: BoxFit.fill,
                  )),
                ],
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New Books",
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    FlatButton(onPressed: null, child: Text("Popular Now"))
                  ])),
          SizedBox(
              height: 200.0,
              child: ListView(
                // This next line does the trick.

                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                      child: FittedBox(
                    child: Image.asset('images/BookCover6.png'),
                    fit: BoxFit.fill,
                  )),
                  Container(
                      child: FittedBox(
                    child: Image.asset('images/BookCover7.png'),
                    fit: BoxFit.fill,
                  )),
                  Container(
                      child: FittedBox(
                    child: Image.asset('images/BookCover8.png'),
                    fit: BoxFit.fill,
                  )),
                  Container(
                      child: FittedBox(
                    child: Image.asset('images/BookCover9.png'),
                    fit: BoxFit.fill,
                  )),
                ],
              ))
        ])));
  }
}
