import 'package:flutter/material.dart';

class FeatuerBooksListViewItem extends StatelessWidget {
  const FeatuerBooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
    );
  }
}
