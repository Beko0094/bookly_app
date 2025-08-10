import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'news_books_state.dart';

class NewsBooksCubit extends Cubit<NewsBooksState> {
  NewsBooksCubit(this.homeRepo) : super(NewsBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchNewsBooks() async {
    emit(NewsBooksLoading());
    var result = await homeRepo.fetchNewsBooks();
    result.fold((failure) {
      emit(NewsBooksFailuer(message: failure.errorMessage));
    }, (books) {
      emit(NewsBooksSucces(books: books));
    });
  }
}
