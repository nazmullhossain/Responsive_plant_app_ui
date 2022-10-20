

import 'package:flutter/material.dart';
import 'package:plantationapp/widgets/title_with_custom.dart';

import '../const/const.dart';

class HeadLineWidget extends StatelessWidget {
  const HeadLineWidget({Key? key,required this.title,required this.press}) : super(key: key);
  final String title;
  final VoidCallback  press;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaulatPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleWidget(text: title),

          FlatButton(
              color: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              onPressed: press,
               child: Text("More",style: TextStyle(
                  color: Colors.white
              ),))
        ],
      ),
    );
  }
}
