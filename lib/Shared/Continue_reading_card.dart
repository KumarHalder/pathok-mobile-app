import 'package:flutter/material.dart';
import 'package:pathok_app/Shared/Const.dart';

class ContinueReadingCard extends StatelessWidget {
  ContinueReadingCard({this.bookName, this.authorName, this.imageUrl});

  final String bookName;
  final String authorName;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
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
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: Row(
            children: [
              Image.asset(imageUrl),
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            bookName,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(authorName),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "122/200",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                child: Text(
                                  "65%",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                            ],
                          ),
                          Container(
                              width: 100,
                              child: LinearProgressIndicator(
                                value: .6,
                                backgroundColor: Colors.grey[300],
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    AppColors.deccolor2),
                              )),
                        ],
                      )),
                  FlatButton(
                    onPressed: null,
                    child: Text(
                      "Continue ->",
                      style: TextStyle(
                        color: AppColors.deccolor2,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
                ],
              ))
            ],
          ),
        ));
  }
}
