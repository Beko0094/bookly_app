import 'package:bookly_app/Core/Utilits/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(width: 250, AssetsData.logo),
        SizedBox(height: 6),
        Text(
          'Reads Free Books',
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
