import 'package:bookly_app/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class FeatuerBooksListView extends StatelessWidget {
  const FeatuerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.30,
      child: Padding(
        padding: const EdgeInsets.only(left: 22),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, i) => FeatuerListViewItem()),
      ),
    );
  }
}
