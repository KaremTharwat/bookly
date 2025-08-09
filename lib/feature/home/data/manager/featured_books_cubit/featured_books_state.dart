import 'package:bookly/feature/home/data/models/book_model.dart';

class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;
  FeaturedBooksSuccess({required this.books});
}

class FeaturedBooksFaluiar extends FeaturedBooksState {
  final String errorMessage;

  FeaturedBooksFaluiar({required this.errorMessage});
}
