import 'package:bookly_app/Core/Utilits/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: SvgPicture.asset(width: 250, AssetsData.logo));
  }
}
