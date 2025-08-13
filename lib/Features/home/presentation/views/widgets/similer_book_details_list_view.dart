import 'package:bookly_app/Core/widgets/custome_error_widget.dart';
import 'package:bookly_app/Core/widgets/custome_loading_indicator.dart';
import 'package:bookly_app/Features/home/presentation/manage/similar_books/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSucces) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.20,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, i) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustombookImage(
                          imageUrl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl2UOMTP4OwTjuOTgkmE_X2skgCzwsuWB9lA&s'),
                    )),
          );
        } else if (state is SimilarBooksFailuer) {
          return CustomeErrorWidget(message: state.message);
        } else {
          return const CustomeLoadingIndicator();
        }
      },
    );
  }
}
