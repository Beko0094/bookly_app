import 'package:bookly_app/Core/Utilits/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomeBookDetailsAppbar(),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const CustombookImage(),
          ),
          const SizedBox(height: 25),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          SizedBox(height: 5),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 12),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(height: 25),
          BookActhions(),
        ],
      ),
    );
  }
}
