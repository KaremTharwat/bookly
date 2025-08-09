import 'package:bookly/feature/home/data/manager/featured_books_cubit/featured_books_state.dart';
import 'package:bookly/feature/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks()async{
emit(FeaturedBooksLoading());
var result =await homeRepo.fetchFeaturedBooks();
result.fold((faliure){
  FeaturedBooksFaluiar(errorMessage: faliure.messageError);
}, (success)
{
  FeaturedBooksSuccess(books: success);
});
  }
}