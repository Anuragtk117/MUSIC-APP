import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                        Image.asset(
                          'assets/images/m4.jpg',
                          width: 150,
                          height: 160,
                        ),
                        Text("Trending"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/m2.jpg',
                          width: 150,
                          height: 160,
                        ),
                        Text("Hip Hop"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/m3.jpg',
                          width: 150,
                          height: 160,
                        ),
                        Text("Devotional"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/m1.jpg',
                          width: 150,
                          height: 160,
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
                        Image.asset(
                          'assets/images/l1.jpg',
                          width: 150,
                          height: 130,
                        ),
                        Text("Latest Malayalam"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/l2.jpeg',
                          width: 150,
                          height: 130,
                        ),
                        Text("Latest Tamil"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/l3.jpeg',
                          width: 150,
                          height: 130,
                        ),
                        Text("Latest Hindi"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/l4.jpeg',
                          width: 150,
                          height: 130,
                        ),
                        Text("Latest Telegu"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/l5.jpeg',
                          width: 150,
                          height: 130,
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
                        Image.asset(
                          'assets/images/t1.jpeg',
                          width: 150,
                          height: 130,
                        ),
                        Text("Anirudh hits"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/t2.jpeg',
                          width: 150,
                          height: 130,
                        ),
                        Text("A R Rahman hits"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/t3.jpeg',
                          width: 150,
                          height: 130,
                        ),
                        Text("Vineeth Sreenivasan hits"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/t4.jpeg',
                          width: 150,
                          height: 130,
                        ),
                        Text("Aadhi hits"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/t5.jpeg',
                          width: 150,
                          height: 130,
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
                        Image.asset(
                          'assets/images/a1.jpeg',
                          width: 150,
                          height: 130,
                        ),
                        Text("Yeshudas special"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/a2.jpeg',
                          width: 150,
                          height: 130,
                        ),
                        Text("Arjith singh special"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/a3.jpeg',
                          width: 150,
                          height: 130,
                        ),
                        Text("Shreya ghoshal special"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/a4.jpeg',
                          width: 150,
                          height: 130,
                        ),
                        Text("Sonu Nigam special"),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/a5.jpeg',
                          width: 150,
                          height: 130,
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
