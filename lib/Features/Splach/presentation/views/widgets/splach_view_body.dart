import 'package:bookly_app/Core/Utilits/app_router.dart';
import 'package:bookly_app/Core/Utilits/assets.dart';
import 'package:bookly_app/Features/Splach/presentation/views/widgets/slider_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliderAnimation;

  @override
  void initState() {
    super.initState();
    initSlideAnimation();
    navigateToHomePage();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(width: 250, AssetsData.logo),
        SizedBox(height: 6),
        SliderText(sliderAnimation: sliderAnimation),
      ],
    );
  }

  void initSlideAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    sliderAnimation = Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void navigateToHomePage() {
    final navigator = GoRouter.of(context);
    Future.delayed(Duration(seconds: 4), () {
      navigator.push(AppRouter.kHomeView);
    });
  }
}
