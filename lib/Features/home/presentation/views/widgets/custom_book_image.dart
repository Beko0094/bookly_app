import 'package:bookly_app/Core/Utilits/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustombookImage extends StatelessWidget {
  const CustombookImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: AspectRatio(
        aspectRatio: 2.45 / 4,
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.blue, width: 0.5), // تحديد اللون والسمك
              borderRadius: BorderRadius.circular(16), // اختياري: زوايا دائرية
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: imageUrl,
                errorWidget: (context, url, error) => Icon(
                  Icons.abc_outlined,
                  color: Colors.blue,
                  size: 50,
                ),
              ),
            )),
      ),
    );
  }
}
