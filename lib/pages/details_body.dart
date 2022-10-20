import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantationapp/const/const.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height*0.8,
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaulatPadding*3),
                    child: Column(
                children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/back_arrow.svg")),
                    )
                ],
              ),
                  )),
              Container(
                height: size.height * 0.8,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        color: kPrimaryColor.withOpacity(0.29),
                        blurRadius: 60,
                      )
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img.png"))),
              )
            ],
          ),
        )
      ],
    );
  }
}
