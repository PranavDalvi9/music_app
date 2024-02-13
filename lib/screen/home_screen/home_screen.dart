import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> tabTitiles = [
    'Recent',
    'Top 50',
    'Chill',
    'R&B',
    'Festival'
  ];
  int selectedTabTitiles = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/welcome.png"),
            fit: BoxFit.cover,
          ),
        ),
        width: double.maxFinite,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 144),
              const Text(
                "Welcome back!",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              const SizedBox(height: 8),
              const Text(
                "What do you feel like today?",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFA5A5A5)),
              ),
              const SizedBox(height: 24),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "(Initiated Date Cannot Be Empty)";
                  }
                },
                // controller: initiatedDateControler,
                style:
                    const TextStyle(color: Color(0xFFA5A5A5), fontSize: 13.0),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0xFFA5A5A5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1, //<-- SEE HERE
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1, //<-- SEE HERE
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true, //<-- SEE HERE
                  fillColor: const Color(0xFF433E48), //<-- SEE HERE
                  contentPadding: const EdgeInsets.all(8.0),
                  hintText: 'Search song, playslist, artist...',
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 116, 116, 116),
                    fontSize: 13.0,
                    fontWeight: FontWeight.w200,
                    fontFamily: 'HelveticaNeue',
                  ),
                  // suffixIcon: Icon(
                  //   Icons.calendar_month_outlined,
                  // ),
                ),
              ),
              const SizedBox(height: 40),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < tabTitiles.length; i++)
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedTabTitiles = i;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 30),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                tabTitiles[i],
                                style: TextStyle(
                                  color: selectedTabTitiles == i
                                      ? Colors.white
                                      : const Color(0xFFA5A5A5),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 2),
                              selectedTabTitiles == i
                                  ? Container(
                                      height: 3,
                                      width: 54,
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFFC22BB7),
                                            Color(0xFF922FF5),
                                          ],
                                        ),
                                      ),
                                    )
                                  : Container(
                                      height: 3,
                                      width: 54,
                                    )
                            ],
                          ),
                        ),
                      )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/img_p2.png",
                          height: 202,
                          width: 208,
                        ),
                        const SizedBox(height: 16),
                        const Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: Text(
                            "R&B Playlist",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          padding: const EdgeInsets.only(left: 6),
                          child: const Text(
                            "Chill your mind",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFA5A5A5)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 24),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/img_p1.png",
                          height: 202,
                          width: 208,
                        ),
                        const SizedBox(height: 16),
                        const Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: Text(
                            "R&B Playlist",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          padding: const EdgeInsets.only(left: 6),
                          child: const Text(
                            "Chill your mind",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFA5A5A5)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
