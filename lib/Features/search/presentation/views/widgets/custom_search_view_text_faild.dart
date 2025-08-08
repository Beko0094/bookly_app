import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSerchViewTextField extends StatelessWidget {
  const CustomSerchViewTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        // controller: controller,
        decoration: InputDecoration(
      hintText: 'tap to search books',
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(12)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 20,
          )),
    ));
  }
}
