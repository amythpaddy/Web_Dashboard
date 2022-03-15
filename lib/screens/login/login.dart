import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uolo_demo/screens/login/component/numberLogin.dart';
import 'package:uolo_demo/screens/login/component/passwordLogin.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin();

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

enum LOGIN_TYPE { OTP_LOGIN, PASSWORD_LOGIN }

class _ScreenLoginState extends State<ScreenLogin> {
  LOGIN_TYPE loginType = LOGIN_TYPE.PASSWORD_LOGIN;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: size.width * .6,
            child: Center(
              child: Container(
                width: size.width * .3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/uolo.png',
                      height: 56.88,
                      width: 160,
                    ),
                    SizedBox(
                      height: 52,
                    ),
                    SizedBox(
                        width: 94,
                        height: 2,
                        child: Divider(
                          color: Colors.grey[600],
                        )),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                          decoration: BoxDecoration(
                              color: loginType == LOGIN_TYPE.OTP_LOGIN
                                  ? Color(0xFFF8F5FE)
                                  : Colors.white,
                              border: Border.all(color: Color(0xFFD0D5DD)),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.all(0)),
                              onPressed: () {
                                setState(() {
                                  loginType = LOGIN_TYPE.OTP_LOGIN;
                                });
                              },
                              child: Text(
                                'Login with OTP',
                                style: TextStyle(
                                  color: loginType == LOGIN_TYPE.OTP_LOGIN
                                      ? Color(0xFF561FE7)
                                      : Colors.grey[600],
                                ),
                              )),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                          decoration: BoxDecoration(
                              color: loginType == LOGIN_TYPE.PASSWORD_LOGIN
                                  ? Color(0xFFF8F5FE)
                                  : Colors.white,
                              border: Border.all(color: Color(0xFFD0D5DD)),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.all(0)),
                              onPressed: () {
                                setState(() {
                                  loginType = LOGIN_TYPE.PASSWORD_LOGIN;
                                });
                              },
                              child: Text(
                                'Login with Password',
                                style: TextStyle(
                                  color: loginType == LOGIN_TYPE.PASSWORD_LOGIN
                                      ? Color(0xFF561FE7)
                                      : Colors.grey[600],
                                ),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    loginType == LOGIN_TYPE.OTP_LOGIN
                        ? NumberLogin()
                        : PasswordLogin(),
                    SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.headset_outlined,
                          color: Colors.grey[600],
                        ),
                        Text('Have a query?'),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/dashboard');
                          },
                          child: Text(
                            'Write to us',
                            style: TextStyle(
                                color: Color(0xFF561FE7),
                                decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(child: Image.asset('assets/images/watermark.png')),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color(0xFF9760F2),
                    Color(0xFF6A3BE4),
                  ])),
                  padding: EdgeInsets.symmetric(horizontal: size.width * .03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.format_quote_rounded,
                        color: Colors.white,
                        size: 52,
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Text(
                        'In my class of 35 students a lot of students are first generation learners. Uolo’s app for English speaking and listening have given them confidence while communicating in English',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 46,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                            color: Color(0xFF74C3CA)),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Mrs Geetanjali Rao',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'English Teacher, Kakatiya School \n(Hyderabad)',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
