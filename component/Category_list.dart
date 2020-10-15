import 'package:flutter/material.dart';
import 'package:furnitur_demo_app/constant.dart';
class Categorylist extends StatefulWidget {
  @override
  _CategorylistState createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {
  int selectedIndex = 0;
  List category = ['ALL', 'Sofa', 'Part Bench', 'Armchair'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index)=>GestureDetector(
          onTap: (){
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: index == category.length - 4 ? kDefaultPadding * 1.47 : 0,
              right: index == category.length - 1 ? kDefaultPadding : 0,
            ),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              color:index == selectedIndex ? Colors.white.withOpacity(0.4) : Colors.transparent,
              borderRadius: BorderRadius.circular(6)
            ),
            child: Text(
              category[index],
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
