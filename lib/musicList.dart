import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class musicList extends StatefulWidget {
  const musicList({super.key});

  @override
  State<musicList> createState() => _musicListState();
}

class _musicListState extends State<musicList> {
  List musicList = [
    {
      'title': "SAMBAR",
      'singer': "ThirumaLi,Fejo,Debzee",
      'url': "assets/images/z1.jpeg"
    },
    {
      'title': "Mada Trance",
      'singer': "Debzee",
      'url': "assets/images/z2.jpeg"
    },
    {
      'title': "Kalapakkara",
      'singer': "Jakes Bejoy,Shreya Ghoshal",
      'url': "assets/images/z3.jpeg"
    },
    {
      'title': "Manavalan Thug",
      'singer': "Debzee,SA",
      'url': "assets/images/z4.jpeg"
    },
    {
      'title': "Rakka Rakka",
      'singer': "Sam C.S,Shankar Mahadevan",
      'url': "assets/images/z5.jpeg"
    },
    {
      'title': "Koode Thullu",
      'singer': "Fejo,Jeffin Jessin",
      'url': "assets/images/z6.jpeg"
    },
    {
      'title': "Neela Nilave",
      'singer': "Sam C.S,Kapil Kapan",
      'url': "assets/images/z7.jpeg"
    },
    {
      'title': "Malabari Bangar",
      'singer': "Debzee,SA",
      'url': "assets/images/z8.jpeg"
    },
  ];

  late ScrollController scrollController;
  double imageSize = 0;
  double initialSize = 200;
  @override
  void initState() {
    imageSize = initialSize;

    scrollController = ScrollController()
      ..addListener(() {
        imageSize = initialSize - scrollController.offset;
        if (imageSize > 0 && imageSize < initialSize) {
          setState(() {});
        }
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final txt = ModalRoute.of(context)!.settings.arguments.toString();

    return Scaffold(
      body: Stack(children: [
        Container(
          color: Colors.blue,
        ),
        SafeArea(
          child: SingleChildScrollView(
            controller: scrollController,
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  clipBehavior: Clip.none,
                  width: MediaQuery.of(context).size.width,
                  height: 510,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0),
                        // Colors.black.withOpacity(0),
                        // Colors.black.withOpacity(1),
                        Colors.black.withOpacity(1),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(.5),
                                offset: Offset(0, 20),
                                blurRadius: 32,
                                spreadRadius: 20)
                          ]),
                          child: Image(
                            image: AssetImage("assets/images/fighter.webp"),
                            width: imageSize,
                            height: imageSize,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "This album curates the latest trending songs tailored for you, offering a dynamic and up-to-date playlist to enhance your music listening experience.",
                                  style: Theme.of(context).textTheme.overline,
                                ),
                                Padding(padding: EdgeInsets.only(bottom: 10)),
                                Text(
                                  txt,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage("assets/images/musix.png"),
                                      width: 48,
                                      height: 48,
                                    ),
                                    Text(
                                      "Musix",
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  "1 776 132 likes 5h 3m",
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.favorite),
                                        SizedBox(width: 16),
                                        Icon(Icons.more_horiz),
                                      ],
                                    ),
                                    Positioned(
                                      right: 0,
                                      bottom: 0,
                                      child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          Container(
                                            width: 64,
                                            height: 64,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.blue,
                                            ),
                                            child: Icon(
                                              Icons.play_arrow,
                                              size: 40,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // padding: EdgeInsets.only(left: 16, right: 16),
                  width: double.infinity,
                  height: 800,
                  color: Colors.black,
                  child: ListView.builder(
                    clipBehavior: Clip.none,
                    //padding: EdgeInsets.only(bottom: 20),
                    itemCount: musicList.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Card(
                        color: Colors.transparent,
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            child: Image.asset(musicList[index]['url']),
                          ),
                          title: Text(musicList[index]['title']),
                          subtitle: Text(musicList[index]['singer']),
                          trailing: const Icon(
                            Icons.more_vert,
                            size: 28,
                            color: Colors.white60,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
