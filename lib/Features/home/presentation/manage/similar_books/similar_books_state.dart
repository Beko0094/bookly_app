part of 'similar_books_cubit.dart';

abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksFailuer extends SimilarBooksState {
  final String message;

  const SimilarBooksFailuer({required this.message});
}

class SimilarBooksSucces extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBooksSucces({required this.books});
}
