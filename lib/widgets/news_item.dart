import 'package:flutter/material.dart';
import 'package:flutter_berita/shared.dart';

class NewsItem extends StatelessWidget {
  final String image;
  final String name;
  final String date;
  final String time;

  NewsItem({this.image, this.name, this.date, this.time});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          height: 100,
          width: (MediaQuery.of(context).size.width - (2 * defaultMargin)) *
              (1 / 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          width: (MediaQuery.of(context).size.width - (2 * defaultMargin)) *
                  (2 / 3) -
              10,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  name,
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w600),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/icon_calender.png',
                    height: 20,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Jan 10, 2021',
                    style: primaryTextStyle.copyWith(
                        fontSize: 12, color: Colors.grey),
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/images/icon_time.png',
                    height: 20,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    '5 min read',
                    style: primaryTextStyle.copyWith(
                        fontSize: 12, color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
