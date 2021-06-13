import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/news.dart';
import '../models/trending.dart';
import 'package:flutter_berita/bloc/news_bloc.dart';
import 'package:flutter_berita/shared.dart';
import 'package:flutter_berita/widgets/category_item.dart';
import 'package:flutter_berita/widgets/news_item.dart';
import 'package:flutter_berita/widgets/trending_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<NewsBloc>().add(GetNews());
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
              child: BlocBuilder<NewsBloc, NewsState>(builder: (_, state) {
                if (state is NewsLoaded) {
                  List<Trending> trending = state.trending;

                  return ListView.builder(
                      itemCount: trending.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (_, index) => TrendingCard(
                            trending: trending[index],
                          ));
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
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
                child: BlocBuilder<NewsBloc, NewsState>(builder: (_, state) {
                  if (state is NewsLoaded) {
                    List<News> news = state.news;

                    return ListView.builder(
                      itemCount: news.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (_, index) => Container(
                          margin: EdgeInsets.only(
                              top: (index == 0) ? 0 : 20,
                              bottom: (index == news.length - 1) ? 20 : 0),
                          child: NewsItem(news[index])),
                    );
                  } else {
                    return CircularProgressIndicator(
                      backgroundColor: primaryColor,
                    );
                  }
                })),
          ],
        ),
      ),
    );
  }
}
