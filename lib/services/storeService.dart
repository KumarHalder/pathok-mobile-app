import 'dart:convert';
import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'package:pathok_app/Book_in_Store.dart';
import 'package:pathok_app/domain/book.dart';

class storeService {
  final String rootApiUrl;

  storeService(this.rootApiUrl);

  Future<List<BookInStore>> getAllItems() async {
    final response = await http.get('${rootApiUrl}/store');
    List<BookInStore> allItems = [];
    if (response.statusCode == 200) {
      Map<String, dynamic> map = jsonDecode(response.body);
      map["items"].forEach((element) {
        var book = element;
        BookInStore obj = new BookInStore(
            bookName: book["Name"],
            authorName: book["Author"],
            imageUrl: book["imageUrl"],
            rating: book["rating"].toDouble(),
            content: book["content"],
            numOfReview: book["numOfReviews"] as int);

        allItems.add(obj);
      });
    }
    return allItems;
  }
}
