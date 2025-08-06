import 'package:bookly_app/Core/Utilits/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custome_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featuer_books_list-view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomeAppBar(),
              FeatuerBooksListView(),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  'BestSeller',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: const BestSellerListView(),
        )
      ],
    );
  }
}
