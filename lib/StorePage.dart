import 'package:flutter/material.dart';
import 'package:pathok_app/Book_in_Store.dart';

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search',
                ),
              ),
              Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      FlatButton(
                          onPressed: null,
                          child: Text(
                            "Recommended",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )),
                      FlatButton(
                          onPressed: null,
                          child: Text(
                            "New Book",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )),
                      FlatButton(
                          onPressed: null,
                          child: Text(
                            "Popular Now",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )),
                    ],
                  )),
              BookInStore(
                bookName: "The War of the world",
                authorName: "Stuart Gibbs",
                imageUrl: "images/pic6.png",
                rating: 4.0,
                numOfReview: 7,
              ),
              BookInStore(
                bookName: "The War of the world",
                authorName: "Stuart Gibbs",
                imageUrl: "images/pic7.png",
                rating: 4.0,
                numOfReview: 7,
              ),
              BookInStore(
                bookName: "The War of the world",
                authorName: "Stuart Gibbs",
                imageUrl: "images/pic5.png",
                rating: 4.0,
                numOfReview: 7,
              ),
              BookInStore(
                bookName: "The War of the world",
                authorName: "Stuart Gibbs",
                imageUrl: "images/pic6.png",
                rating: 4.0,
                numOfReview: 7,
              )
            ],
          )),
    );
  }
}
