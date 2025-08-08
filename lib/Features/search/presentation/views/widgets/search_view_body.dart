import 'package:bookly_app/Features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/custom_search_view_text_faild.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSerchViewTextField(),
          SizedBox(height: 20),
          Text('Search Result'),
          SizedBox(height: 20),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, i) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: BookListViewItem(),
            ));
  }
}
