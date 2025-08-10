import 'package:flutter/material.dart';

class CustomeErrorWidget extends StatelessWidget {
  const CustomeErrorWidget({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Text(message);
  }
}
