import 'package:flutter/material.dart';
import '../models/news.dart';
import 'package:flutter_berita/shared.dart';

class DetailPage extends StatelessWidget {
  final News news;

  DetailPage(this.news);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Image.asset(
                      'assets/images/btn_back.png',
                    ),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: Image.asset(
                      'assets/images/btn_share.png',
                    ),
                    iconSize: 50,
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              height: 250,
              width: MediaQuery.of(context).size.width - (2 * defaultMargin),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: (news.imageUrl != null)
                          ? NetworkImage(news.imageUrl)
                          : AssetImage('assets/images/news1.jpeg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(30)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              width: MediaQuery.of(context).size.width - (2 * defaultMargin),
              child: Text(
                news.title,
                style: primaryTextStyle.copyWith(
                    fontSize: 20, fontWeight: FontWeight.w600),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: defaultMargin),
                  width: MediaQuery.of(context).size.width / 2 - defaultMargin,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/profile.png',
                        width: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width - (2 * defaultMargin)) / 2 - 40 - 20,
                        child: Text(
                          (news.author != null) ? news.author : 'Unknown',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey),
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: defaultMargin),
                  width: MediaQuery.of(context).size.width / 2 - defaultMargin,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Jan 10, 2021',
                        style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              width: MediaQuery.of(context).size.width - (2 * defaultMargin),
              child: Text(
                news.description ??= '-',
                style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
