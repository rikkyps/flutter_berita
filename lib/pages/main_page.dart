import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_berita/shared.dart';
import 'package:flutter_berita/widgets/category_item.dart';
import 'package:flutter_berita/widgets/news_item.dart';

import 'detail_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            //HEADER
            Container(
              margin: EdgeInsets.only(
                  left: defaultMargin, top: 20, right: defaultMargin),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/profile.png'))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Dzikrulloh Idfi',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/btn_search.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: defaultMargin),
              child: Text(
                'Breaking News',
                style: primaryTextStyle.copyWith(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //HIGHLIGHT NEWS
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              height: 275,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailPage()));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/highlight_banner.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: MediaQuery.of(context).size.width -
                          (2 * defaultMargin) -
                          (2 * 10),
                      child: Text(
                        'Contact Lost With Sriwijaya Air\nBoeing 737-500 After Take Off',
                        style: primaryTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w600),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/profile.png',
                            width: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Jhon Smith',
                            style: primaryTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey),
                          ),
                          Spacer(),
                          Text(
                            '10 Jan 2020',
                            style: primaryTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //CATEGORY ITEM
            Container(
              height: 35,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryItem('All', true),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryItem('Internation', false),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryItem('Media', false),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryItem('Sport', false),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryItem('Business', false),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryItem('Movies', false),
                  SizedBox(
                    width: 10,
                  ),
                  CategoryItem('Politic', false),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            //All News
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              height: 350,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  NewsItem(
                    name:
                        'Palestina vs Israel Menggelar Agresi Militer, Kemenangan Untuk Palestina!',
                    image: 'assets/images/news2.jpg',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  NewsItem(
                    name:
                        'Jokowi Diminta Pro-aktif Dalam Menyikapi Permasalahan Internal KPK',
                    image: 'assets/images/news3.jpg',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  NewsItem(
                    name:
                        'KRI Nanggala 402 Nasibmu Kini: Eternal Patrol Status Baru KRI Nanggala 402',
                    image: 'assets/images/news1.jpg',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
