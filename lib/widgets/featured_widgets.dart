import 'package:flutter/material.dart';

import '../const/const.dart';

class FeatureImage extends StatelessWidget {
  const FeatureImage({Key? key,
 required this.press,required this.image}) : super(key: key);
  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return    GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaulatPadding,
            top: kDefaulatPadding/2,
            bottom: kDefaulatPadding/2),
        width: size.width*0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
                image: AssetImage(image)
            )
        ),
      ),
    );
  }
}
