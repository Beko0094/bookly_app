import 'package:bookly_app/Core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActhions extends StatelessWidget {
  const BookActhions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: const CustomButton(
            backgroundColor: Colors.white,
            btnText: '19.99 €',
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          ),
        ),
        Expanded(
          child: const CustomButton(
            backgroundColor: Color(0xffEF8262),
            btnText: 'Free preview',
            fontSize: 16,
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
          ),
        ),
      ],
    );
  }
}
