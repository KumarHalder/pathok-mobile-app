import 'package:flutter/material.dart';

class BookInLibrary extends StatelessWidget {
  BookInLibrary(
      {this.bookName, this.authorName, this.imageUrl, this.dominatingColor});

  final String bookName;
  final String authorName;
  final String imageUrl;
  final Color dominatingColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: dominatingColor,
        padding: EdgeInsets.all(10),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      bookName,
                      style: TextStyle(
                          color:
                              authorName == null ? Colors.black : Colors.white,
                          fontSize: 15),
                    ),
                    authorName != null
                        ? Text(
                            "By " + authorName,
                            style:
                                TextStyle(color: Colors.white.withOpacity(.6)),
                          )
                        : Container()
                  ])),
          Container(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              color: Colors.black,
              child: FittedBox(
                child: Image.asset(imageUrl),
                fit: BoxFit.contain,
              ))
        ]));
  }
}
