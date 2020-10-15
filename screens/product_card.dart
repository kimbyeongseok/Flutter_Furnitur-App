import 'package:flutter/material.dart';
import 'package:furnitur_demo_app/models/product.dart';
import '../constant.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key, this.itemIndex, this.product, this.press,
  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding / 2
      ),
      height: 160,
//                color: Colors.blueAccent,
      child: InkWell(
        onTap: press,
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
                child: Image.asset(
                  product.image,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(

                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,),
                      child: Text(
                        product.title,
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
                        '\$${product.price}',
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
    );
  }
}

