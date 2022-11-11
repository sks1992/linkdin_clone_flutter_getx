import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5));
    return const Scaffold(
      body: Center(
        child: Text(
          "Linkdin Clone is being initialized",
          style: TextStyle(
              color: Colors.green, fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
