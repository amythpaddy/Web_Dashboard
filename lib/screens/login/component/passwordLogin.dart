import 'package:flutter/material.dart';

class PasswordLogin extends StatelessWidget {
  const PasswordLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Enter Mobile Number/Email',
        ),
        SizedBox(
          height: 6,
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFD0D5DD),
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: TextField(
              decoration: InputDecoration(border: InputBorder.none),
            )),
        SizedBox(
          height: 23,
        ),
        Text(
          'Enter Password',
        ),
        SizedBox(
          height: 6,
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFD0D5DD),
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: TextField(
              decoration: InputDecoration(border: InputBorder.none),
              obscureText: true,
            )),
        SizedBox(
          height: 6,
        ),
        Row(
          children: [
            Checkbox(value: false, onChanged: (val) {}),
            Text('Remember Me'),
            Expanded(child: SizedBox()),
            Text(
              'Forgot Password?',
              style: TextStyle(color: Color(0xFF561FE7)),
            )
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          width: size.width * .3,
          decoration: BoxDecoration(
              color: Color(0xFF561FE7),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              )),
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'LOGIN',
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
