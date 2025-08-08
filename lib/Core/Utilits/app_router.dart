import 'package:bookly_app/Features/Splach/presentation/views/splach_view.dart';
import 'package:bookly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
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
        builder: (cotext, state) => const BookDetailsView()),
    GoRoute(path: kSearchView, builder: (cotext, state) => const SearchView()),
  ]);
}
