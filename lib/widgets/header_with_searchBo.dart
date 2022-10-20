import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../const/const.dart';

class HeaderSearchWidget extends StatelessWidget {
  const HeaderSearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      //it will cover 20% of our total height
      height: size.height * 0.2,

      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
                left: kDefaulatPadding,
                right: kDefaulatPadding,
                bottom: 10+kDefaulatPadding
            ),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36)
                )
            ),
            child: Row(
              children: [
                Text("Hi Uishopy!",style: Theme.of(context).
                textTheme.headline5?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold

                ),),
                Spacer(),
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: kDefaulatPadding),
                margin: EdgeInsets.symmetric(horizontal: kDefaulatPadding),
                height: 50,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.23))
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Expanded(

                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search...",
                          hintStyle:
                          TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,

                        ),
                      ),
                    ),

                    SvgPicture.asset("assets/icons/search.svg")
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
