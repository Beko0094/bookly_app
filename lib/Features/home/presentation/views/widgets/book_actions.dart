import 'package:bookly_app/Core/functions/custom_lunch_url.dart';
import 'package:bookly_app/Core/widgets/custom_button.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActhions extends StatelessWidget {
  const BookActhions({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              btnText: '19.99 €',
              textColor: Colors.black,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                customLaunchUrl(context, book.volumeInfo.previewLink!);
              },
              backgroundColor: Color(0xffEF8262),
              btnText: getText(),
              fontSize: 16,
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }

  String getText() {
    if (book.volumeInfo.previewLink == null) {
      return 'Not avaliable';
    } else {
      return 'Preview';
    }
  }
}
