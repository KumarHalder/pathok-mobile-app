import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class BookInStore extends StatelessWidget {
  BookInStore(
      {this.bookName,
      this.authorName,
      this.imageUrl,
      this.rating,
      this.numOfReview,
      this.content});

  final String bookName;
  final String authorName;
  final String imageUrl;
  final double rating;
  final int numOfReview;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.red,
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: 310,
        child: Stack(children: [
          Positioned(
              right: 0,
              top: 20,
              child: Container(
                height: 120,
                width: 200,
                child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(bookName),
                            Text(authorName),
                            SmoothStarRating(
                              rating: rating,
                              isReadOnly: true,
                            ),
                            Text(numOfReview.toString() + " Reviews")
                          ],
                        ))),
                decoration: new BoxDecoration(
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 10.0,
                    ),
                  ],
                ),
              )),
          Positioned(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(
                    color: Colors.grey, // set border color
                    width: 0.0), // set border width
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)), // set rounded corner radius
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.black,
                      offset: Offset(-2, 0),
                      spreadRadius: 0)
                ] // make rounded corner of border
                ),
            //color: Colors.grey,
            height: 180,
            width: 130,
            child: FadeInImage.assetNetwork(
              placeholder: "images/pic1.png",
              image: imageUrl,
              fit: BoxFit.fitWidth,
            ),
          ))
        ]));
  }
}
