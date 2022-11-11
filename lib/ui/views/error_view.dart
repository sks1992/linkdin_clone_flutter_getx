import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2));
    return const Scaffold(
      body: Center(
        child: Text(
          "An error has been occurred",
          style: TextStyle(
              color: Colors.red, fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
