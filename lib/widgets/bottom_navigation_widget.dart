import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../const/const.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: kDefaulatPadding*2,
          right: kDefaulatPadding*2,
          bottom: kDefaulatPadding
      ),
      height: 80,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0,-10),
              blurRadius: 35,
              color: kPrimaryColor.withOpacity(0.38),

            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){},
              icon: SvgPicture.asset("assets/icons/flower.svg")),
          IconButton(onPressed: (){},
              icon: SvgPicture.asset("assets/icons/heart-icon.svg")),
          IconButton(onPressed: (){},
              icon: SvgPicture.asset("assets/icons/user-icon.svg")),
        ],
      ),
    );
  }
}
