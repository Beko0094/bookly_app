import 'package:bookly_app/Core/Utilits/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/newet_books_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_home_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featuer_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
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
                  'newestBooks',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: const NewestBooksListView(),
          ),
        ),
      ],
    );
  }
}
