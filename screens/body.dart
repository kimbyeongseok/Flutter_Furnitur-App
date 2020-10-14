import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furnitur_demo_app/component/Category_list.dart';
import 'package:furnitur_demo_app/component/search_box.dart';
import 'package:furnitur_demo_app/constant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SearchBox(),
        Categorylist(),
        SizedBox(height: kDefaultPadding / 2,),
        Expanded(
          child: Stack(
            children: [
              //*==background box==*
              Container(
                margin:EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              //*==product box==*
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                    vertical: kDefaultPadding / 2
                ),
                height: 160,
//                color: Colors.blueAccent,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 136,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        borderRadius: BorderRadius.circular(22),
                        boxShadow: [kDefaultShadow],
                      ),
                      child: Container(
                        margin: EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                    ),
                    //*==product image==*
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 160,
                        width: 200,
                        child: Image.asset('assets/images/Item_1.png'),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: SizedBox(
                        height: 136,
                        width: size.width - 200,
                        child: Column(
                          children: [
                            Spacer(

                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding,),
                              child: Text(
                                'Classic Leather Arm Chair',
                                style: Theme.of(context).textTheme.button,
                              ),
                            ),
                            Spacer(

                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5, vertical: kDefaultPadding / 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(22), topRight: Radius.circular(22)),
                                color: kSecondaryColor,
                              ),
                              child: Text(
                                '\$58',
                                style: Theme.of(context).textTheme.button,
                              ),
                            ),
                          ],
                        ),
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

