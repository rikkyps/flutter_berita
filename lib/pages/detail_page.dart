import 'package:flutter/material.dart';
import 'package:flutter_berita/shared.dart';

class DetailPage extends StatelessWidget {
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
                      image: AssetImage('assets/images/highlight_banner.jpg'),
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
                'Contact Lost With Sriwijaya Air Boeing 737-500 After Take Off',
                style: primaryTextStyle.copyWith(
                    fontSize: 20, fontWeight: FontWeight.w600),
                maxLines: 2,
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
                      Text(
                        'Jhon Smith',
                        style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
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
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                style:
                    primaryTextStyle.copyWith(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}
