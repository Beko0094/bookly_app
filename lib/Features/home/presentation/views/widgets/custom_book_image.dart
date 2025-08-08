import 'package:bookly_app/Core/Utilits/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustombookImage extends StatelessWidget {
  const CustombookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
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
