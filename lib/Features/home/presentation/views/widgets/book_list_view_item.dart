import 'package:bookly_app/Core/Utilits/app_router.dart';
import 'package:bookly_app/Core/Utilits/styles.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/constants.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.books});
  final BookModel books;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustombookImage(
                imageUrl: books.volumeInfo.imageLinks?.thumbnail ?? ''),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      books.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGTSectraFine, height: 0),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    books.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                    // maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text('Free',
                          style: Styles.textStyle20.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent)),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 27.0),
                        child: const BookRating(),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
