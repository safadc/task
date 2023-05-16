import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

List<String> images = [
  "https://hips.hearstapps.com/hmg-prod/images/pillars-of-creation-visible-and-midi-1666987280.png",
  "https://letsenhance.io/static/334225cab5be263aad8e3894809594ce/75c5a/MainAfter.jpg",
  "https://media.istockphoto.com/id/1179680187/fr/photo/homme-noir-faisant-le-mouvement-de-dab.jpg?s=612x612&w=0&k=20&c=Yg0k3pg7XTrbjyZmsIdFTXOPiazHE37mkKu9wo_FMSM=",
  "https://media.istockphoto.com/id/1283745984/photo/young-man-with-evening-city-views.jpg?s=612x612&w=0&k=20&c=DvfPH7WIF7CuNJfXNoCCBshErQmEbZIIpsdLLVM9604=",
];

class _Home_pageState extends State<Home_page> {
  final Duration initialDelay = Duration(seconds: 3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Expanded(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              stretch: true,
              expandedHeight: MediaQuery.of(context).size.height * 0.7,
              pinned: false,
              collapsedHeight: 75,
              flexibleSpace: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello!',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              '@hgfkrj',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          child: Icon(
                            Icons.arrow_circle_up_rounded,
                            size: 35,
                            color: Colors.purple,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.grey[200],
                              width: 1.0,
                            ),
                          ),
                          child: Icon(
                            Icons.music_note,
                            size: 50,
                            color: Colors.red,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Colors.grey[200],
                                width: 1.0,
                              ),
                            ),
                            child: Icon(
                              Icons.video_settings,
                              size: 50,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0.8),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Colors.grey[200],
                                width: 1.0,
                              ),
                            ),
                            child: Icon(
                              Icons.file_copy,
                              size: 50,
                              color: Colors.greenAccent,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      alignment: AlignmentDirectional.centerStart,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "https://media.istockphoto.com/id/1225173869/photo/house-boat-anchored-in-lake-with-jungle-background-backwaters-kerala-india.jpg?s=612x612&w=0&k=20&c=uo-bsRQjhlT9AgeWBs_pkSvHQwStCelMC75EUpzwjHU=",
                            height: 150,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "Heart to Mouth",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      alignment: AlignmentDirectional.centerStart,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2015/10/30/20/13/sunrise-1014712__340.jpg",
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Moscow",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.play_circle_fill_rounded,
                            size: 50,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ]),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      alignment: AlignmentDirectional.centerStart,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "https://cdn.shopify.com/s/files/1/0220/1048/articles/2018-Summer-Tone-Up-General-Banner_fa848a15-d127-46b8-b636-0de9fd4cbc8a_1500x.jpg?v=1607728439",
                            height: 150,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          "Summer Tones",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 250, right: 0),
                    child: DelayedDisplay(
                      delay: Duration(seconds: initialDelay.inSeconds + 3),
                      child: Text(
                        "Subscribe",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: DelayedDisplay(
                        delay: Duration(seconds: initialDelay.inSeconds + 10),
                        child: Container(
                          height: 90,
                          width: 350,
                          color: Colors.purple,
                          child: DelayedDisplay(
                            delay:
                                Duration(seconds: initialDelay.inSeconds + 10),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    "Subscribe to Receive all entertainment content ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                    // overflow: TextOverflow.clip,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 117, bottom: 20),
                                  child: Icon(
                                    Icons.close,
                                    size: 30,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(20)),
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home,
              size: 40,
              color: Colors.deepPurple,
            ),
            Icon(
              Icons.message,
              color: Colors.deepPurple,
              size: 40,
            ),
            Icon(
              Icons.person,
              color: Colors.deepPurple,
              size: 40,
            ),
            Icon(
              Icons.notifications,
              color: Colors.deepPurple,
              size: 40,
            ),
          ],
        ),
      )
    ])));
  }
}
