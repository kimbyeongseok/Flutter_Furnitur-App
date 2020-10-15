import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furnitur_demo_app/constant.dart';
import 'body.dart';


class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text('Furniturs of Möbel'),
      actions: [
        IconButton(
          icon: SvgPicture.asset('assets/icons/notification.svg'),
          onPressed: (){},
        ),
      ],
    );
  }
}
