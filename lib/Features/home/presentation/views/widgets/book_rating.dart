import 'package:bookly_app/Core/Utilits/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 35),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4F),
          ),
          const SizedBox(width: 12),
          Text('4.8',
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(width: 10),
          Opacity(
            opacity: .5,
            child: Text('(2390)',
                style:
                    Styles.textStyle14.copyWith(fontWeight: FontWeight.w400)),
          ),
        ],
      ),
    );
  }
}
