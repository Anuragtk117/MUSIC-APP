import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    List txt = [
      "Trending Songs",
      "Hip Hop Songs",
      "Devotional Songs",
      "Pop Songs",
      "Latest Malayalam",
      "Latest Tamil",
      "Latest Hindi",
      "Latest Telegu",
      "Latest Kannada",
      "Anirudh Hits",
      "A R Rahman Hits",
      "Vineeth Sreenivasan Hits",
      "Aadhi Hits",
      "Vidhyasagar Hits",
      "Yeshudas Special",
      "Arjith Singh Special",
      "Shreya Ghoshal Special",
      "Sonu Nigam Special",
      "K S Chithra Special"
    ];
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/logo.png'),
        backgroundColor: Colors.transparent,
        // title: Text(
        //   'Musix',
        //   style: TextStyle(
        //     color: Colors.white,
        //   ),
        // ),
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .4,
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "   Recently Played",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                // Padding(padding: EdgeInsets.only(bottom: 5)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'musicList',
                                arguments: txt[0]);
                          },
                          child: Ink.image(
                            image: AssetImage('assets/images/m4.jpg'),
                            width: 150,
                            height: 160,
                          ),
                        ),
                        // Image.asset(
                        //   'assets/images/m4.jpg',
                        //   width: 150,
                        //   height: 160,
                        // ),
                        Text("Trending"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'musicList',
                                arguments: txt[1]);
                          },
                          child: Ink.image(
                            image: AssetImage('assets/images/m2.jpg'),
                            width: 150,
                            height: 160,
                          ),
                        ),
                        Text("Hip Hop"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'musicList',
                                arguments: txt[2]);
                          },
                          child: Ink.image(
                            image: AssetImage('assets/images/m3.jpg'),
                            width: 150,
                            height: 160,
                          ),
                        ),
                        Text("Devotional"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'musicList',
                                arguments: txt[3]);
                          },
                          child: Ink.image(
                            image: AssetImage('assets/images/m1.jpg'),
                            width: 150,
                            height: 160,
                          ),
                        ),
                        Text("POP"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                  ]),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "   Fresh new music",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'musicList',
                                arguments: txt[4]);
                          },
                          child: Ink.image(
                            image: AssetImage('assets/images/l1.jpg'),
                            width: 150,
                            height: 130,
                          ),
                        ),
                        Text("Latest Malayalam"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'musicList',
                                arguments: txt[5]);
                          },
                          child: Ink.image(
                            image: AssetImage('assets/images/l2.jpeg'),
                            width: 150,
                            height: 130,
                          ),
                        ),
                        Text("Latest Tamil"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'musicList',
                                arguments: txt[6]);
                          },
                          child: Ink.image(
                            image: AssetImage('assets/images/l3.jpeg'),
                            width: 150,
                            height: 130,
                          ),
                        ),
                        Text("Latest Hindi"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'musicList',
                                arguments: txt[7]);
                          },
                          child: Ink.image(
                            image: AssetImage('assets/images/l4.jpeg'),
                            width: 150,
                            height: 130,
                          ),
                        ),
                        Text("Latest Telegu"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'musicList',
                                arguments: txt[8]);
                          },
                          child: Ink.image(
                            image: AssetImage('assets/images/l5.jpeg'),
                            width: 150,
                            height: 130,
                          ),
                        ),
                        Text("Latest Kannada"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                  ]),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "   Your top mixes",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'musicList',
                                arguments: txt[9]);
                          },
                          child: Ink.image(
                            image: AssetImage('assets/images/t1.jpeg'),
                            width: 150,
                            height: 130,
                          ),
                        ),
                        Text("Anirudh hits"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'musicList',
                                arguments: txt[10]);
                          },
                          child: Ink.image(
                            image: AssetImage('assets/images/t2.jpeg'),
                            width: 150,
                            height: 130,
                          ),
                        ),
                        Text("A R Rahman hits"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'musicList',
                                arguments: txt[11]);
                          },
                          child: Ink.image(
                            image: AssetImage('assets/images/t3.jpeg'),
                            width: 150,
                            height: 130,
                          ),
                        ),
                        Text("Vineeth Sreenivasan hits"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'musicList',
                                arguments: txt[12]);
                          },
                          child: Ink.image(
                            image: AssetImage('assets/images/t4.jpeg'),
                            width: 150,
                            height: 130,
                          ),
                        ),
                        Text("Aadhi hits"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'musicList',
                                arguments: txt[13]);
                          },
                          child: Ink.image(
                            image: AssetImage('assets/images/t5.jpeg'),
                            width: 150,
                            height: 130,
                          ),
                        ),
                        Text("Vidhyasagar hits"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                  ]),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "   Favourite Artists",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'musicList',
                                arguments: txt[14]);
                          },
                          child: Ink.image(
                            image: AssetImage('assets/images/a1.jpeg'),
                            width: 150,
                            height: 130,
                          ),
                        ),
                        Text("Yeshudas special"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'musicList',
                                arguments: txt[15]);
                          },
                          child: Ink.image(
                            image: AssetImage('assets/images/a2.jpeg'),
                            width: 150,
                            height: 130,
                          ),
                        ),
                        Text("Arjith singh special"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'musicList',
                                arguments: txt[16]);
                          },
                          child: Ink.image(
                            image: AssetImage('assets/images/a3.jpeg'),
                            width: 150,
                            height: 130,
                          ),
                        ),
                        Text("Shreya ghoshal special"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'musicList',
                                arguments: txt[17]);
                          },
                          child: Ink.image(
                            image: AssetImage('assets/images/a4.jpeg'),
                            width: 150,
                            height: 130,
                          ),
                        ),
                        Text("Sonu Nigam special"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'musicList',
                                arguments: txt[18]);
                          },
                          child: Ink.image(
                            image: AssetImage('assets/images/a5.jpeg'),
                            width: 150,
                            height: 130,
                          ),
                        ),
                        Text("K S Chithra special"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
