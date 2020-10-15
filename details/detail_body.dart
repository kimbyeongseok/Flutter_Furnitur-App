import 'package:flutter/material.dart';
import 'package:furnitur_demo_app/constant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          //height: 200,
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)
            ),
          ),
          child: Column(
            children: [
              Container(

                margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
                color: Colors.black,
                height: size.width * 0.8,
                child: Stack(
                  children: [
                    Container(
                      height: size.width * 0.7,
                      width: size.width * 0.7,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
