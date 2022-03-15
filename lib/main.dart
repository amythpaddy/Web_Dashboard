import 'package:flutter/material.dart';
import 'package:uolo_demo/screens/dashboard/dashboard.dart';
import 'package:uolo_demo/screens/dashboard/ui/home_page.dart';
import 'package:uolo_demo/screens/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const ScreenLogin(),
        '/dashboard': (_) => HomePage()
      },
    );
  }
}
