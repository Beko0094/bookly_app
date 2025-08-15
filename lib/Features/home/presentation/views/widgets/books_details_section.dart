import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/Core/Utilits/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .18),
          child: CustombookImage(
              imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? ''),
        ),
        const SizedBox(height: 10),
        Text(
          book.volumeInfo.title!,
          textAlign: TextAlign.center,
          style: Styles.textStyle30,
        ),
        SizedBox(height: 5),
        Opacity(
          opacity: .7,
          child: Text(
            book.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 12),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(height: 25),
        BookActhions(book: book),
      ],
    );
  }
}
