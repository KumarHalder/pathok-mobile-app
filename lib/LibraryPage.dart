import 'package:flutter/material.dart';
import 'package:pathok_app/Continue_reading_card.dart';
import 'package:pathok_app/Book_in_Library.dart';

class LibraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
          )),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            "My Library",
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          )),
      SizedBox(
          height: 500,
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            childAspectRatio: 16 / 20,
            crossAxisSpacing: 10,
            shrinkWrap: true,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              BookInLibrary(
                imageUrl: "images/pic1.png",
                bookName: "Be Coming",
                authorName: "Adam Barsi",
                dominatingColor: Colors.redAccent,
              ),
              BookInLibrary(
                imageUrl: "images/BookCover-2.png",
                bookName: "Nowhere to Go",
                authorName: "Michele Obama",
                dominatingColor: Color.fromRGBO(170, 195, 193, 1),
              ),
              BookInLibrary(
                imageUrl: "images/BookCover.png",
                bookName: "Me Without you",
                authorName: "Asley John",
                dominatingColor: Colors.blueGrey,
              ),
              BookInLibrary(
                imageUrl: "images/pic2.png",
                bookName: "Angels & Demons",
                authorName: "Dan Brown",
                dominatingColor: Colors.deepPurpleAccent,
              ),
            ],
          ))
    ]));
  }
}
