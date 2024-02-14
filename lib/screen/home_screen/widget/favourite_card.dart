import 'package:flutter/material.dart';

class FavouriteCard extends StatefulWidget {
  final String imageString;
  final String title;
  final String subTitle;
  final VoidCallback onTapped;

  final String time;
  const FavouriteCard(
      {super.key,
      required this.imageString,
      required this.title,
      required this.subTitle,
      required this.time,
      required this.onTapped});

  @override
  State<FavouriteCard> createState() => _FavouriteCardState();
}

class _FavouriteCardState extends State<FavouriteCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTapped,
      child: Container(
        margin: EdgeInsets.only(bottom: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 56,
              width: 56,
              child: Image.asset(
                widget.imageString,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                Text(
                  widget.subTitle,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA5A5A5)),
                ),
              ],
            ),
            const Spacer(),
            Text(
              widget.time,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
