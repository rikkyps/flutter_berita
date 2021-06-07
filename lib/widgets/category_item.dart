import 'package:flutter/material.dart';
import 'package:flutter_berita/shared.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final bool isSelected;

  CategoryItem(this.name, this.isSelected);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isSelected
              ? Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: primaryColor),
                )
              : SizedBox(),
          Text(
            name,
            style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: isSelected ? primaryColor : Colors.grey),
          )
        ],
      ),
    );
  }
}
