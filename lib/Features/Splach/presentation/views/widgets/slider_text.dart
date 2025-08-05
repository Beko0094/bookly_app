import 'package:flutter/material.dart';

class SliderText extends StatelessWidget {
  const SliderText({
    super.key,
    required this.sliderAnimation,
  });

  final Animation<Offset> sliderAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: sliderAnimation,
      builder: (context, _) => SlideTransition(
        position: sliderAnimation,
        child: Text(
          'Reads Free Books',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
