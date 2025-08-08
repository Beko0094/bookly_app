import 'package:bookly_app/Features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, i) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
        child: BookListViewItem(),
      ),
    );
  }
}
