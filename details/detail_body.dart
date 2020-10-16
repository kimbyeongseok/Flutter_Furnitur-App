import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furnitur_demo_app/constant.dart';
import 'package:furnitur_demo_app/models/product.dart';
import 'package:furnitur_demo_app/screens/color_dots.dart';
import 'package:furnitur_demo_app/screens/list_of_colors.dart';
import 'package:furnitur_demo_app/screens/product_image.dart';

class Body extends StatelessWidget {

  final Product product;
  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return 
      SingleChildScrollView(
        child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding*2,
            ),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ProductPoster(
                      size: size,
                      image: product.image,
                  ),
                ),
                ListOfColor(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding/2),
                  child: Text(
                    product.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Text(
                  '\$${product.price}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: kSecondaryColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding/2),
                  child: Text(
                    product.description,
                    style: TextStyle(color: kTextColor),
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(kDefaultPadding),
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding/2,
            ),
            decoration: BoxDecoration(
              color: Color(0xfffcbf1e),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/chat.svg',
                  height: 18,
                ),
                SizedBox(width: kDefaultPadding/2,),
                Text(
                  'Chat',
                  style: TextStyle(color: Colors.white),
                ),
                //**share available space
                Spacer(),
                FlatButton.icon(
                  onPressed: (){},
                  icon: SvgPicture.asset(
                    'assets/icons/notification.svg',
                    height: 18,
                  ),
                  label: Text(
                    'Add to Cart',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
    ),
      );
  }
}



