import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class searchScreen extends StatelessWidget {
  const searchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        // padding: EdgeInsets.only(top: 40),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black,
              pinned: true,
              centerTitle: false,
              expandedHeight: 150,
              flexibleSpace: const FlexibleSpaceBar(
                  background: Image(
                image: AssetImage('assets/images/search.png'),
                fit: BoxFit.cover,
              )),
            ),
            SliverPadding(padding: EdgeInsets.only(bottom: 30)),
            SliverAppBar(
              backgroundColor: Colors.black,
              elevation: 0,
              pinned: true,
              expandedHeight: 0,
              bottom: const PreferredSize(
                preferredSize: Size.fromHeight(-10.0),
                child: SizedBox(),
              ),
              flexibleSpace: SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'What do you want to listen to?',
                    contentPadding: EdgeInsets.only(top: 12),
                    hintStyle: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    // labelText: 'What do you want to listen to?',
                    // labelStyle: TextStyle(
                    // color: Colors.black45, fontWeight: FontWeight.bold),
                    // hoverColor: Colors.red,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      // borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Browse all",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Ink.image(
                              image: AssetImage('assets/images/s6.png'),
                              width: 150,
                              height: 130,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(right: 20)),
                          InkWell(
                            onTap: () {},
                            child: Ink.image(
                              image: AssetImage('assets/images/s7.png'),
                              width: 150,
                              height: 130,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Ink.image(
                              image: AssetImage('assets/images/s1.png'),
                              width: 150,
                              height: 150,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(right: 20)),
                          InkWell(
                            onTap: () {},
                            child: Ink.image(
                              image: AssetImage('assets/images/s4.png'),
                              width: 150,
                              height: 150,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Ink.image(
                              image: AssetImage('assets/images/s2.png'),
                              width: 150,
                              height: 150,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(right: 20)),
                          InkWell(
                            onTap: () {},
                            child: Ink.image(
                              image: AssetImage('assets/images/s3.png'),
                              width: 150,
                              height: 150,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Ink.image(
                              image: AssetImage('assets/images/s5.png'),
                              width: 150,
                              height: 150,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(right: 20)),
                          InkWell(
                            onTap: () {},
                            child: Ink.image(
                              image: AssetImage('assets/images/s9.png'),
                              width: 150,
                              height: 150,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Ink.image(
                              image: AssetImage('assets/images/s8.png'),
                              width: 150,
                              height: 150,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(right: 20)),
                          InkWell(
                            onTap: () {},
                            child: Ink.image(
                              image: AssetImage('assets/images/s10.png'),
                              width: 150,
                              height: 150,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              childCount: 1,
            ))
          ],
        ),
      ),
    );
  }
}
