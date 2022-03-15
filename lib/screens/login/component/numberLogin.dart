import 'package:flutter/material.dart';

class NumberLogin extends StatelessWidget {
  const NumberLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Phone Number'),
        SizedBox(
          height: 4,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              border: Border.all(color: Color(0xFFD0D5DD))),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('IND'),
              Icon(Icons.keyboard_arrow_down),
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(0),
                    hintText: '+91-9876543210'),
              ))
            ],
          ),
        ),
        SizedBox(
          height: 24,
        ),
        TextButton(
            style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
            onPressed: () {},
            child: Container(
              width: size.width * 0.3,
              padding: EdgeInsets.symmetric(vertical: 12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Text(
                'GET OTP',
                style: TextStyle(color: Colors.white),
              ),
            )),
      ],
    );
  }
}
