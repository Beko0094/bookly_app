part of 'news_books_cubit.dart';

abstract class NewsBooksState extends Equatable {
  const NewsBooksState();

  @override
  List<Object> get props => [];
}

class NewsBooksInitial extends NewsBooksState {}

class NewsBooksLoading extends NewsBooksState {}

class NewsBooksFailuer extends NewsBooksState {
  final String message;

  const NewsBooksFailuer({required this.message});
}

class NewsBooksSucces extends NewsBooksState {
  final List<BookModel> books;

  const NewsBooksSucces({required this.books});
}
