import 'package:flutter/material.dart';

import '../const/const.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({Key? key,
  required this.productContry,
    required this.productName,
    required this.price,
    required this.image,
    required this.press
  }) : super(key: key);
  final String image;
  final String productName;
  final String productContry;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return   Container(
      margin: EdgeInsets.only(
          left: kDefaulatPadding,
          top: kDefaulatPadding/2,
          bottom: kDefaulatPadding*2.5
      ),
      width: size.width*0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaulatPadding/2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23)
                    )
                  ]
              ),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(
                          children:[
                            TextSpan(
                                text: "${productName}\n".toUpperCase(),
                                style: Theme.of(context).textTheme.button
                            ),
                            TextSpan(
                                text:  productContry.toUpperCase(),
                                style: TextStyle(color: kPrimaryColor.withOpacity(0.5))
                            )
                          ]
                      )),
                  Spacer(),
                  Text("\$ ${price}",style: Theme.of(context)
                      .textTheme.button?.
                  copyWith(color: kPrimaryColor),)
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
