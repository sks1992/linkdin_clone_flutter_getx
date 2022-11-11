import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linkdin_clone/app_routes.dart';
import 'package:linkdin_clone/ui/views/error_view.dart';
import 'package:linkdin_clone/ui/views/loading_view.dart';

void main()  {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( LinkdinCloneApp());
}

class LinkdinCloneApp extends StatelessWidget {
  final Future<FirebaseApp> _initialized = Firebase.initializeApp();

  LinkdinCloneApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialized,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return  MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.blue,
                scaffoldBackgroundColor: Colors.black
            ),
            home:const LoadingView(),
          );
        } else if (snapshot.hasError) {
          return  MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.blue,
                scaffoldBackgroundColor: Colors.black
            ),
            home: const ErrorView(),
          );
        }
        return  GetMaterialApp(
          title: 'Linkdin clone',
          debugShowCheckedModeBanner: false,
          enableLog: true,
          getPages: AppRoute.route,
          initialRoute: RouteNames.login,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.black
          ),
        );
      },
    );
  }
}
