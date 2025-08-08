import 'package:bookly_app/Core/Utilits/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similer_book_details_list_view.dart';
import 'package:flutter/material.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        const SimilerBooksListView(),
      ],
    );
  }
}
