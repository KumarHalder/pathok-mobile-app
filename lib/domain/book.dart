import 'dart:ffi';

class Book {
  final String name;
  final String author;
  final String description;
  final Float rating;
  final String imageUrl;
  final int numOfReviews;

  Book(
      {this.name,
      this.author,
      this.description,
      this.rating,
      this.imageUrl,
      this.numOfReviews});
}
