import 'package:bookly_app/Core/widgets/custome_error_widget.dart';
import 'package:bookly_app/Core/widgets/custome_loading_indicator.dart';
import 'package:bookly_app/Features/home/presentation/manage/news_books/news_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBooksCubit, NewsBooksState>(
      builder: (context, state) {
        if (state is NewsBooksSucces) {
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, i) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: BookListViewItem(books: state.books[i]),
            ),
          );
        } else if (state is NewsBooksFailuer) {
          return CustomeErrorWidget(message: state.message);
        } else {
          return CustomeLoadingIndicator();
        }
      },
    );
  }
}
