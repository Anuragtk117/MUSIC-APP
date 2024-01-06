import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:seven/bottomNavigation.dart';

class firstPage extends StatelessWidget {
  const firstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomRight,
        colors: [
          Colors.black,
          Colors.blue,
          Colors.pink,
        ],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        // Text(
                        //   'MusiX',
                        //   style: TextStyle(color: Colors.white, fontSize: 50),
                        // ),
                        Image.asset(
                          'assets/images/musix.png',
                          width: 400,
                          height: 300,
                        ),
                        // Padding(padding: EdgeInsets.only(bottom: 10)),
                        SizedBox(
                          width: 150,
                          height: 40,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 16, 130, 237),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25))),
                              onPressed: () {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (ctx) => bottonNavigation()),
                                    (route) => false);
                              },
                              child: Text(
                                'Get Started',
                                style: TextStyle(fontSize: 18),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/music.png',
                        // alignment: Alignment.bottomCenter,
                        width: 300,
                        // height: 500,
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
