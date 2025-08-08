import 'package:bookly_app/Features/search/presentation/views/widgets/custom_search_view_text_faild.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: const Column(
        children: [
          CustomSerchViewTextField(),
        ],
      ),
    );
  }
}
