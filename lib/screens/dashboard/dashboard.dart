import 'package:flutter/material.dart';
import 'package:uolo_demo/screens/dashboard/component/body.dart';
import 'package:uolo_demo/screens/dashboard/component/header.dart';
import 'package:uolo_demo/screens/dashboard/component/sidebar.dart';

class ScreenDashboard extends StatelessWidget {
  const ScreenDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // Positioned(top: 75, left: size.width * .2, child: Body()),
          Positioned(top: 1, child: Sidebar()),
          Header()
        ],
      ),
    );
  }
}
