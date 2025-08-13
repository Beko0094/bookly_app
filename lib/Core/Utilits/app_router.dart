import 'package:bookly_app/Core/Utilits/service_locator.dart';
import 'package:bookly_app/Features/Splach/presentation/views/splach_view.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/home/presentation/manage/similar_books/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (cotext, state) => const SplashView()),
    GoRoute(path: kHomeView, builder: (cotext, state) => const HomeView()),
    GoRoute(
        path: kBookDetailsView,
        builder: (cotext, state) => BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
            child: BookDetailsView(
              books: state.extra as BookModel,
            ))),
    GoRoute(path: kSearchView, builder: (cotext, state) => const SearchView()),
  ]);
}
