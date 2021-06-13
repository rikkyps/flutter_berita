import 'package:flutter/material.dart';
import 'package:flutter_berita/pages/detail_page.dart';
import 'package:flutter_berita/shared.dart';
import '../models/news.dart';

class NewsItem extends StatelessWidget {
  final News news;

  NewsItem(this.news);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(news)));
      },
      child: Row(
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
                  image: (news.imageUrl != null)
                      ? NetworkImage(news.imageUrl)
                      : AssetImage('assets/images/news1.jpg'),
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
                    news.title,
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
      ),
    );
  }
}
