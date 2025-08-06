import 'package:bookly_app/Core/Utilits/styles.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custome_appbar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featuer_books_list-view.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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
        SizedBox(height: 20),
        BestSellerListViewItem(),
      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          height: 125,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl2UOMTP4OwTjuOTgkmE_X2skgCzwsuWB9lA&s'))),
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Text(
                'Harry Potter and the Goblet of Fire',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle20,
              ),
            ),
            Text('J.K. Rowling',
                style: Styles.textStyle14
                    .copyWith(fontFamily: kMontserrat.toString()))
          ],
        )
      ],
    );
  }
}
