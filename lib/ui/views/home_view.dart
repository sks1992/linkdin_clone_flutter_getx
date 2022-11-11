import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5));
    return const Scaffold(
      body: Center(child: Text("Home Page",style: TextStyle(color: Colors.white),),),
    );
  }
}
