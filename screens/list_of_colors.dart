import 'package:flutter/material.dart';
import '../constant.dart';
import 'color_dots.dart';

class ListOfColor extends StatelessWidget {
  const ListOfColor({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColorDots(
            fillColor: Color(0xff80989a),
            isSelected: true,
          ),
          ColorDots(
            fillColor: Color(0xffff2500),
          ),
          ColorDots(
            fillColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}