import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustombookImage extends StatelessWidget {
  const CustombookImage({super.key, required this.imageUrl, this.onTap});
  final String imageUrl;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
