import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .20,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
        color: Colors.red,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.dashboard,
                color: Color(0xFF561FE7),
              ),
              SizedBox(
                width: 11,
              ),
              Text(
                'Dashboard',
                style: TextStyle(color: Color(0xFF561FE7)),
              )
            ],
          )
        ],
      ),
    );
  }
}
