import 'package:flutter/material.dart';
import 'package:pathok_app/Book_in_Store.dart';
import 'package:pathok_app/Shared/Custom_app_bar.dart';
import 'package:pathok_app/locator.dart';
import 'package:pathok_app/services/storeService.dart';
import 'package:pathok_app/webViewExample.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePage createState() => _StorePage();
}

class _StorePage extends State<StorePage> {
  final _storeService = locator.get<storeService>("storeService");

  Future<List<BookInStore>> futureObject;

  @override
  void initState() {
    super.initState();
    futureObject = _storeService.getAllItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: "Store"),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search',
                ),
              ),
              // Container(
              //     height: 100,
              //     child: ListView(
              //       scrollDirection: Axis.horizontal,
              //       children: [
              //         FlatButton(
              //             onPressed: null,
              //             child: Text(
              //               "Recommended",
              //               style: TextStyle(
              //                   fontWeight: FontWeight.bold, fontSize: 20),
              //             )),
              //         FlatButton(
              //             onPressed: null,
              //             child: Text(
              //               "New Book",
              //               style: TextStyle(
              //                   fontWeight: FontWeight.bold, fontSize: 20),
              //             )),
              //         FlatButton(
              //             onPressed: null,
              //             child: Text(
              //               "Popular Now",
              //               style: TextStyle(
              //                   fontWeight: FontWeight.bold, fontSize: 20),
              //             )),
              //       ],
              //     )),
              Expanded(
                  child: FutureBuilder(
                future: futureObject,
                builder: (context, snapshot) {
                  if (snapshot.hasData)
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return new GestureDetector(
                              onTap: () {
                                pushNewScreen(context,
                                    withNavBar: true,
                                    screen: ViewBook(
                                      name: snapshot.data[index].bookName,
                                      content: snapshot.data[index].content,
                                    ));
                              },
                              child: SizedBox(
                                  height: 200, child: snapshot.data[index]));
                        });
                  //return Container();
                  else
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                },
              )),
              // BookInStore(
              //   bookName: "The War of the world",
              //   authorName: "Stuart Gibbs",
              //   imageUrl: "images/pic6.png",
              //   rating: 4.0,
              //   numOfReview: 7,
              // ),
              // BookInStore(
              //   bookName: "The War of the world",
              //   authorName: "Stuart Gibbs",
              //   imageUrl: "images/pic7.png",
              //   rating: 4.0,
              //   numOfReview: 7,
              // ),
              // BookInStore(
              //   bookName: "The War of the world",
              //   authorName: "Stuart Gibbs",
              //   imageUrl: "images/pic5.png",
              //   rating: 4.0,
              //   numOfReview: 7,
              // ),
              // BookInStore(
              //   bookName: "The War of the world",
              //   authorName: "Stuart Gibbs",
              //   imageUrl: "images/pic6.png",
              //   rating: 4.0,
              //   numOfReview: 7,
              // )
            ],
          ),
        ));
  }

  // @override
  // // TODO: implement wantKeepAlive
  // bool get wantKeepAlive => true;
}
