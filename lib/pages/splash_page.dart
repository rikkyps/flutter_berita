import 'package:flutter/material.dart';
import '../shared.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: defaultMargin),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/icon.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: defaultMargin),
              child: Text(
                'Portal Berita Indonesia\nTrusted and Updated',
                style: primaryTextStyle.copyWith(
                    fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(left: defaultMargin),
              child: Text(
                'Kumpulan berita terupdate\ndalam negri dalam genggaman',
                style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(left: defaultMargin),
              height: 50,
              width: 210,
              child: RaisedButton(
                color: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Text(
                  'Gasken!',
                  style: primaryTextStyle.copyWith(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
