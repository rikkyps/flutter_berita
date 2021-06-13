import 'package:flutter/material.dart';
import '../models/trending.dart';
import '../shared.dart';

class TrendingCard extends StatelessWidget {
  final Trending trending;

  TrendingCard({this.trending});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: (trending.imageUrl != null)
                        ? NetworkImage(trending.imageUrl)
                        : AssetImage('assets/images/highlight_banner.jpg'),
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
    );
  }
}
