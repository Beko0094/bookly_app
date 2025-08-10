part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFailuer extends FeaturedBooksState {
  final String message;

  const FeaturedBooksFailuer({required this.message});
}

class FeaturedBooksSucces extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksSucces({required this.books});
}
