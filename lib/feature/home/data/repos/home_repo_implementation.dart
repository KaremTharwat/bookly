import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/feature/home/data/models/book_model.dart';
import 'package:bookly/feature/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation implements HomeRepo {
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() {
    throw UnimplementedError();
  }

  @override
  fetchFeaturedBooks() {

    throw UnimplementedError();
  }
}