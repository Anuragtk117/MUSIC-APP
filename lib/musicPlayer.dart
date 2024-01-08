import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class musicPlayer extends StatefulWidget {
  const musicPlayer({super.key});

  @override
  State<musicPlayer> createState() => _musicPlayerState();
}

class _musicPlayerState extends State<musicPlayer> {
  double _sliderValue = 0.0;
  double _songLength = 4.30;
  bool _pressed = false;
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    final arr = ModalRoute.of(context)!.settings.arguments as Map;
    final album = arr['album'].toString();
    final singer = arr['singer'].toString();
    final music = arr['music'].toString();
    final url = arr['url'].toString();
    print(url);

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomRight,
        colors: [
          Colors.blue,
          Colors.blue.withOpacity(0.6),
          Colors.black.withOpacity(0.6),
          Colors.black,
        ],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Container(
          padding: EdgeInsets.only(top: 20),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                  Column(
                    children: [
                      Text("PLAYING FROM PLAYLIST"),
                      Text(
                        album,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 28,
                    color: Colors.white60,
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Image.asset(
                url,
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          music,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          singer,
                          style: Theme.of(context).textTheme.caption,
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_circle_outline),
                      iconSize: 28,
                    )
                  ],
                ),
              ),
              SliderTheme(
                data: SliderThemeData(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5.0),
                    trackHeight: 2.0),
                child: Slider(
                  min: 0,
                  max: _songLength,
                  value: _sliderValue,
                  onChanged: (double value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  },
                  activeColor: Colors.white,
                  inactiveColor: Colors.white38,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _sliderValue.toStringAsFixed(2),
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    ),
                    Text(
                      _songLength.toStringAsFixed(2),
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shuffle_outlined),
                      color: Colors.green,
                      iconSize: 30,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.skip_previous),
                      color: Colors.white,
                      iconSize: 50,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _pressed = !_pressed;
                        });
                      },
                      icon: Icon(_pressed
                          ? Icons.pause_circle_filled
                          : Icons.play_circle_fill),
                      color: Colors.white,
                      iconSize: 80,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.skip_next),
                      color: Colors.white,
                      iconSize: 50,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.do_disturb_on_outlined),
                      color: Colors.white,
                      iconSize: 30,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bluetooth_connected_sharp),
                      color: Colors.white,
                      iconSize: 25,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share_outlined),
                      color: Colors.white,
                      iconSize: 25,
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
