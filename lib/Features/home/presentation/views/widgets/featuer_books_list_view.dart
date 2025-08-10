import 'package:bookly_app/Core/widgets/custome_error_widget.dart';
import 'package:bookly_app/Core/widgets/custome_loading_indicator.dart';
import 'package:bookly_app/Features/home/presentation/manage/featured_books/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatuerBooksListView extends StatelessWidget {
  const FeatuerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSucces) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.30,
            child: Padding(
              padding: const EdgeInsets.only(left: 22),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, i) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustombookImage(),
                ),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailuer) {
          return CustomeErrorWidget(message: state.message);
        } else {
          return CustomeLoadingIndicator();
        }
      },
    );
  }
}
