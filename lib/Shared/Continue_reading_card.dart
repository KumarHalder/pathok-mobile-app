import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pathok_app/reader.dart';

class ContinueReadingCard extends StatelessWidget {
  ContinueReadingCard({this.bookName, this.authorName, this.imageUrl});

  final String bookName;
  final String authorName;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushNewScreen(context, screen: Reader());
      },
      child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: BorderSide(
              color: Colors.grey[200],
              width: 2.0,
            ),
          ),
          clipBehavior: Clip.antiAlias,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Row(
              children: [
                Image.asset(imageUrl),
                Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(bookName),
                            Text(authorName),
                            Container(
                              height: 20,
                              width: 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text("122/200"), Text("65%")],
                              ),
                            ),
                            Container(
                                width: 100,
                                child: LinearProgressIndicator(
                                  value: .6,
                                  backgroundColor: Colors.grey[300],
                                  valueColor: new AlwaysStoppedAnimation<Color>(
                                      Colors.green[500]),
                                )),
                          ],
                        )),
                    FlatButton(
                        onPressed: null,
                        child: Text(
                          "Continue ->",
                          style: TextStyle(color: Colors.purple[900]),
                        ))
                  ],
                ))
              ],
            ),
          )),
    );
  }
}
