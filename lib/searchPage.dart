import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class searchPage extends StatelessWidget {
  const searchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              // color: Colors.red,
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Text(
                    "Search",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 20)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 320,
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'What do you want to listen to?',
                            hintStyle: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.bold),
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
                    ],
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Column(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Browse all",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Ink.image(
                            image: AssetImage('assets/images/s1.png'),
                            width: 150,
                            height: 130,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 20)),
                        InkWell(
                          onTap: () {},
                          child: Ink.image(
                            image: AssetImage('assets/images/s2.png'),
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
                            image: AssetImage('assets/images/s2.png'),
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
                            image: AssetImage('assets/images/s1.png'),
                            width: 150,
                            height: 150,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 20)),
                        InkWell(
                          onTap: () {},
                          child: Ink.image(
                            image: AssetImage('assets/images/s2.png'),
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
                            image: AssetImage('assets/images/s1.png'),
                            width: 150,
                            height: 150,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 20)),
                        InkWell(
                          onTap: () {},
                          child: Ink.image(
                            image: AssetImage('assets/images/s2.png'),
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
                            image: AssetImage('assets/images/s1.png'),
                            width: 150,
                            height: 150,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 20)),
                        InkWell(
                          onTap: () {},
                          child: Ink.image(
                            image: AssetImage('assets/images/s2.png'),
                            width: 150,
                            height: 150,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
