import 'package:flutter/material.dart';

class IndividualScreen extends StatefulWidget {
  const IndividualScreen({super.key});

  @override
  State<IndividualScreen> createState() => _IndividualScreenState();
}

class _IndividualScreenState extends State<IndividualScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/play_indi.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/images/menu_icon.png',
                    width: 24,
                  )
                ],
              ),
              SizedBox(height: 40),
              Image.asset(
                'assets/images/play_ind.png',
                // width: MediaQuery.of(context).size.width,
              ),
              SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "R&B Playlist",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Chill your mind",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFA5A5A5)),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/images/heart.png',
                    width: 24,
                  ),
                  SizedBox(width: 20)
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/shuffle.png',
                    width: 24,
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/images/skip-back.png',
                    width: 24,
                  ),
                  SizedBox(width: 24),
                  Image.asset(
                    'assets/images/pause btn.png',
                    width: 64,
                  ),
                  SizedBox(width: 24),
                  Image.asset(
                    'assets/images/skip-forward.png',
                    width: 24,
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/images/repeat.png',
                    width: 24,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
