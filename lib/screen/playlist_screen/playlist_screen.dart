import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:music_app/screen/Individual_screen/Individual_screen.dart';
import 'package:music_app/screen/home_screen/home_screen.dart';
import 'package:music_app/screen/home_screen/widget/favourite_card.dart';

class PlayListScreen extends StatefulWidget {
  const PlayListScreen({super.key});

  @override
  State<PlayListScreen> createState() => _PlayListScreenState();
}

class _PlayListScreenState extends State<PlayListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/playlist.png"),
          fit: BoxFit.cover,
        ),
      ),
      width: double.maxFinite,
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/playlist_img.png',
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                top: 50,
                left: 24,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 50,
                right: 44,
                child: Image.asset(
                  'assets/images/menu_icon.png',
                  width: 24,
                ),
              ),
              const Positioned(
                bottom: 98,
                left: 24,
                child: Text(
                  "R&B Playlist",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              const Positioned(
                bottom: 74,
                left: 24,
                child: Text(
                  "Chill your mind",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFA5A5A5)),
                ),
              ),
              Positioned(
                bottom: 90,
                right: 96,
                child: Image.asset(
                  'assets/images/heart.png',
                  width: 24,
                ),
              ),
              Positioned(
                bottom: 74,
                right: 24,
                child: Image.asset(
                  'assets/images/play btn.png',
                  width: 56,
                ),
              ),
            ],
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  SizedBox(height: 32),
                  FavouriteCard(
                      onTapped: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IndividualScreen()),
                        );
                      },
                      imageString: 'assets/images/fav_1.png',
                      title: 'Bye Bye',
                      subTitle: 'Marshmello, Juice WRLD',
                      time: '2:09'),
                  FavouriteCard(
                      onTapped: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IndividualScreen()),
                        );
                      },
                      imageString: 'assets/images/fav_2.png',
                      title: 'I Like You',
                      subTitle: 'Post Malone, Doja Cat',
                      time: '2:09'),
                  FavouriteCard(
                      onTapped: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IndividualScreen()),
                        );
                      },
                      imageString: 'assets/images/fav_3.png',
                      title: 'Fountains',
                      subTitle: 'Drake, Tems',
                      time: '2:09'),
                  FavouriteCard(
                      onTapped: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IndividualScreen()),
                        );
                      },
                      imageString: 'assets/images/fav_1.png',
                      title: 'Bye Bye',
                      subTitle: 'Marshmello, Juice WRLD',
                      time: '2:09'),
                  FavouriteCard(
                      onTapped: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IndividualScreen()),
                        );
                      },
                      imageString: 'assets/images/fav_2.png',
                      title: 'I Like You',
                      subTitle: 'Post Malone, Doja Cat',
                      time: '2:09'),
                  FavouriteCard(
                      onTapped: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IndividualScreen()),
                        );
                      },
                      imageString: 'assets/images/fav_3.png',
                      title: 'Fountains',
                      subTitle: 'Drake, Tems',
                      time: '2:09'),
                  FavouriteCard(
                      onTapped: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IndividualScreen()),
                        );
                      },
                      imageString: 'assets/images/fav_1.png',
                      title: 'Bye Bye',
                      subTitle: 'Marshmello, Juice WRLD',
                      time: '2:09'),
                  FavouriteCard(
                      onTapped: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IndividualScreen()),
                        );
                      },
                      imageString: 'assets/images/fav_2.png',
                      title: 'I Like You',
                      subTitle: 'Post Malone, Doja Cat',
                      time: '2:09'),
                  FavouriteCard(
                      onTapped: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IndividualScreen()),
                        );
                      },
                      imageString: 'assets/images/fav_3.png',
                      title: 'Fountains',
                      subTitle: 'Drake, Tems',
                      time: '2:09'),
                ],
              ),
            ),
          ))
        ],
      ),
    )
        // CustomScrollView(
        //   physics: const BouncingScrollPhysics(),
        //   slivers: <Widget>[
        //     SliverAppBar(
        //       backgroundColor: Colors.black,
        //       stretch: true,
        //       onStretchTrigger: () async {
        //         // Triggers when stretching
        //       },
        //       stretchTriggerOffset: 300.0,
        //       pinned: true,
        //       snap: true,
        //       floating: true,
        //       expandedHeight: 200.0,
        //       // shape: const RoundedRectangleBorder(
        //       //   borderRadius: BorderRadius.only(
        //       //     bottomLeft: Radius.circular(20.0),
        //       //     bottomRight: Radius.circular(20.0),
        //       //   ),
        //       // ),
        //       iconTheme: const IconThemeData(color: Colors.black),
        //       flexibleSpace: FlexibleSpaceBar(
        //         title: Text('SliverAppBar'),
        //         background: ClipRRect(
        //           borderRadius: const BorderRadius.only(
        //             bottomLeft: Radius.circular(20.0),
        //             bottomRight: Radius.circular(20.0),
        //           ),
        //           child: Image.asset(
        //             "assets/images/playlist_img.png",
        //             // height: 202,
        //             // width: double.maxFinite,
        //             fit: BoxFit.cover,
        //           ),
        //         ),
        //       ),
        //     ),
        //     SliverList(
        //       delegate: SliverChildBuilderDelegate(
        //         (BuildContext context, int index) {
        //           return Container(
        //             color: index.isOdd ? Colors.white : Colors.black12,
        //             height: 100.0,
        //             child: Center(
        //               child: Text('$index',
        //                   textScaler: const TextScaler.linear(5.0)),
        //             ),
        //           );
        //         },
        //         childCount: 20,
        //       ),
        //     ),
        //   ],
        // ),
        );
  }
}
