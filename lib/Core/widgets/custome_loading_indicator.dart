import 'package:flutter/material.dart';

class CustomeLoadingIndicator extends StatelessWidget {
  const CustomeLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
