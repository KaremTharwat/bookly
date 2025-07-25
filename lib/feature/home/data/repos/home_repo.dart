import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/feature/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failures,List<BookModel>>> fetchBestSellerBooks();
  fetchFeaturedBooks();
}