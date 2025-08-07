import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/feature/home/data/models/book_model.dart';
import 'package:bookly/feature/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImplementation(this.apiServices);
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks()async {
    try{
      var data =await  apiServices.getBooks("volumes?q=flowers+inauthor:keyes");
      List<BookModel> books =[];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }catch(e){
      if(e is DioException)
      {
         return left(ServerFailure.fromDioError(e));
      }
     return left(ServerFailure(messageError: e.toString()));
    }
   
  }

  @override
  fetchFeaturedBooks() {

    throw UnimplementedError();
  }
}