import 'package:flutter/material.dart';

import '../const/const.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key,required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaulatPadding/4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaulatPadding),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
