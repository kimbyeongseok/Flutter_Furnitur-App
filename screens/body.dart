import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furnitur_demo_app/component/Category_list.dart';
import 'package:furnitur_demo_app/component/search_box.dart';
import 'package:furnitur_demo_app/constant.dart';
import 'package:furnitur_demo_app/details/detail_screen.dart';
import 'package:furnitur_demo_app/models/product.dart';
import 'product_card.dart';

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
              ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index)=>ProductCard(
                  itemIndex: index,
                  product: products[index],
                  press:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

