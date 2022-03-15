import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uolo_demo/utils/textview.dart';

import '../../../utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.

        backgroundColor: Colors.white,
        elevation: 2,

        title: Row(
          children: [
            Image.asset(
              'assets/images/uolo.png',
              height: 24,
            ),
            SizedBox(
              width: 10,
            ),
            Image.network(
              'https://pbs.twimg.com/profile_images/1148112781427666945/qjJwzvbZ_400x400.png',
              height: 40,
              width: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView(
                    title: 'Maharishi vidya mandir school',
                    textStyle: commonTextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400)),
                TextView(
                    title: 'School Code : 1234556788',
                    textStyle: commonTextStyle(
                        fontSize: 12, fontWeight: FontWeight.w400))
              ],
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Colors.grey)),
              child: Row(
                children: [
                  TextView(
                      title: 'Academic Year',
                      margin: EdgeInsets.only(left: 25),
                      textStyle: commonTextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400)),
                  const SizedBox(
                    width: 25,
                  ),
                  const Icon(Icons.keyboard_arrow_down_rounded)
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Row(
            children: [
              Image.network(
                'https://cdn-icons-png.flaticon.com/512/149/149071.png',
                width: 32,
                height: 32,
              ),
              MaterialButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        TextView(
                            title: 'Vikrant',
                            textStyle: commonTextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400)),
                        const Icon(Icons.keyboard_arrow_down_rounded)
                      ],
                    ),
                    TextView(
                        title: 'Client admin',
                        textStyle: commonTextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400))
                  ],
                ),
              )
            ],
          )
        ],
      ),

      body: Container(
        child: Row(
          children: [
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width * .15,
              child: Drawer(
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: ListTile(
                        onTap: () {},
                        title: TextView(
                          title: 'Dashboard',
                          textStyle: commonTextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xFF561FE7)),
                        ),
                        selected: true,
                        leading: SvgPicture.asset(
                          'assets/images/icons.svg',
                          height: 20,
                          width: 20,
                          color: Color(0xFF561FE7),
                        ),
                        minLeadingWidth: 10,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: ListTile(
                        onTap: () {},
                        title: TextView(
                          title: 'Chat',
                          textStyle: commonTextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xFF667085)),
                        ),
                        selected: true,
                        leading: SvgPicture.asset(
                          'assets/images/icons.svg',
                          height: 20,
                          width: 20,
                          color: Color(0xFF667085),
                        ),
                        minLeadingWidth: 10,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: ListTile(
                        onTap: () {},
                        title: TextView(
                          title: 'Uolo Speak',
                          textStyle: commonTextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xFF667085)),
                        ),
                        selected: true,
                        leading: SvgPicture.asset(
                          'assets/images/icons.svg',
                          height: 20,
                          width: 20,
                          color: Color(0xFF667085),
                        ),
                        trailing: const Icon(Icons.keyboard_arrow_down_rounded,
                            color: Color(0xFF667085)),
                        minLeadingWidth: 10,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: ListTile(
                        onTap: () {},
                        title: TextView(
                          title: 'Fee Module',
                          textStyle: commonTextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xFF667085)),
                        ),
                        selected: true,
                        leading: SvgPicture.asset(
                          'assets/images/icons.svg',
                          height: 20,
                          width: 20,
                          color: Color(0xFF667085),
                        ),
                        minLeadingWidth: 10,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: ListTile(
                        onTap: () {},
                        title: TextView(
                          title: 'Admin',
                          textStyle: commonTextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xFF667085)),
                        ),
                        selected: true,
                        leading: SvgPicture.asset(
                          'assets/images/icons.svg',
                          height: 20,
                          width: 20,
                          color: Color(0xFF667085),
                        ),
                        minLeadingWidth: 10,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: ListTile(
                        onTap: () {},
                        title: TextView(
                          title: 'Help',
                          textStyle: commonTextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xFF667085)),
                        ),
                        selected: true,
                        leading: SvgPicture.asset(
                          'assets/images/icons.svg',
                          height: 20,
                          width: 20,
                          color: Color(0xFF667085),
                        ),
                        minLeadingWidth: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              height: MediaQuery.of(context).size.height,
              color: const Color(0xffE5E5E5),
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Expanded(
                child: Column(
                  children: [
                    TextView(
                        title: 'Dashboard',
                        textStyle: commonTextStyle(
                            fontSize: 32, fontWeight: FontWeight.w400)),
                    Container(
                      margin: const EdgeInsets.only(
                          top: 30, left: 25, right: 25, bottom: 20),
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 1.3,
                            child: Checkbox(
                              value: false,
                              onChanged: (vale) {},
                              side: const BorderSide(
                                  width: 1, color: Color(0xFFB3B3BF)),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2)),
                            ),
                          ),
                          MaterialButton(
                            minWidth: MediaQuery.of(context).size.width * .10,
                            onPressed: () {},
                            child: Row(
                              children: [
                                TextView(
                                    title: 'Invoice Id',
                                    textStyle: commonTextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                                const Icon(
                                  Icons.arrow_drop_down_rounded,
                                  color: Color(0xff030229),
                                )
                              ],
                            ),
                          ),
                          MaterialButton(
                            minWidth: MediaQuery.of(context).size.width * .10,
                            onPressed: () {},
                            child: Row(
                              children: [
                                TextView(
                                    title: 'Name',
                                    textStyle: commonTextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                                const Icon(
                                  Icons.arrow_drop_down_rounded,
                                  color: Color(0xff030229),
                                )
                              ],
                            ),
                          ),
                          MaterialButton(
                            minWidth: MediaQuery.of(context).size.width * .20,
                            onPressed: () {},
                            child: Row(
                              children: [
                                TextView(
                                    title: 'Email',
                                    textStyle: commonTextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                                const Icon(
                                  Icons.arrow_drop_down_rounded,
                                  color: Color(0xff030229),
                                )
                              ],
                            ),
                          ),
                          MaterialButton(
                            minWidth: MediaQuery.of(context).size.width * .20,
                            onPressed: () {},
                            child: Row(
                              children: [
                                TextView(
                                    title: 'Date',
                                    textStyle: commonTextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                                const Icon(
                                  Icons.arrow_drop_down_rounded,
                                  color: Color(0xff030229),
                                )
                              ],
                            ),
                          ),
                          MaterialButton(
                            minWidth: MediaQuery.of(context).size.width * .10,
                            onPressed: () {},
                            child: Row(
                              children: [
                                TextView(
                                    title: 'Status',
                                    textStyle: commonTextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                                const Icon(
                                  Icons.arrow_drop_down_rounded,
                                  color: Color(0xff030229),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * .04,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            margin:
                                EdgeInsets.only(bottom: index == 14 ? 10 : 0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.all(25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Transform.scale(
                                  scale: 1.3,
                                  child: Checkbox(
                                    value: false,
                                    onChanged: (vale) {},
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFFB3B3BF)),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(2)),
                                  ),
                                ),
                                Container(
                                  child: Container(
                                    height: 15,
                                    margin: const EdgeInsets.only(left: 20),
                                    width:
                                        MediaQuery.of(context).size.width * .07,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffC4C4C4)
                                            .withOpacity(.30),
                                        borderRadius:
                                            BorderRadius.circular(11)),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 20),
                                  width:
                                      MediaQuery.of(context).size.width * .10,
                                  child: Row(
                                    children: [
                                      Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/149/149071.png',
                                        width: 36,
                                        height: 36,
                                      ),
                                      Container(
                                        height: 15,
                                        margin: const EdgeInsets.only(left: 10),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .05,
                                        decoration: BoxDecoration(
                                            color: const Color(0xffC4C4C4)
                                                .withOpacity(.30),
                                            borderRadius:
                                                BorderRadius.circular(11)),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 15,
                                  margin: const EdgeInsets.only(left: 20),
                                  // alignment: Alignment.centerLeft,
                                  width:
                                      MediaQuery.of(context).size.width * .20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffC4C4C4)
                                          .withOpacity(.30),
                                      borderRadius: BorderRadius.circular(11)),
                                ),
                                Container(
                                  height: 15,
                                  margin: const EdgeInsets.only(left: 20),
                                  width:
                                      MediaQuery.of(context).size.width * .15,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffC4C4C4)
                                          .withOpacity(.30),
                                      borderRadius: BorderRadius.circular(11)),
                                ),
                                Container(
                                  height: 15,
                                  margin: const EdgeInsets.only(left: 20),
                                  width:
                                      MediaQuery.of(context).size.width * .10,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffC4C4C4)
                                          .withOpacity(.30),
                                      borderRadius: BorderRadius.circular(11)),
                                ),
                                Container(
                                  height: 15,
                                  margin: const EdgeInsets.only(left: 20),
                                  width:
                                      MediaQuery.of(context).size.width * .05,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffC4C4C4)
                                          .withOpacity(.30),
                                      borderRadius: BorderRadius.circular(11)),
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: 15,
                        separatorBuilder: (BuildContext context, int index) {
                          return const Divider(
                            height: 10,
                            color: Colors.transparent,
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
