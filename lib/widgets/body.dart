import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantationapp/const/const.dart';
import 'package:plantationapp/pages/details_pages.dart';
import 'package:plantationapp/widgets/featured_widgets.dart';
import 'package:plantationapp/widgets/header_with_searchBo.dart';
import 'package:plantationapp/widgets/headline_widget.dart';
import 'package:plantationapp/widgets/plant_card.dart';
import 'package:plantationapp/widgets/title_with_custom.dart';

import '../pages/details_body.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //it will privde us total hight and width of our screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderSearchWidget(),
          SizedBox(
            height: 10,
          ),
          HeadLineWidget(title: "Recomended", press: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PlantCard(
                  productContry: "Russia",
                  productName: "Sammnata",
                  price: 86,
                  image: "assets/images/image_1.png",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DetailsPage()),
                    );
                  },
                ),
                PlantCard(
                  productContry: "Russia",
                  productName: "Sammnata",
                  price: 86,
                  image: "assets/images/image_2.png",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DetailsPage()),
                    );
                  },
                ),
                PlantCard(
                  productContry: "Russia",
                  productName: "Sammnata",
                  price: 86,
                  image: "assets/images/image_3.png",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DetailsPage()),
                    );
                  },
                ),
                PlantCard(
                  productContry: "Russia",
                  productName: "Sammnata",
                  price: 86,
                  image: "assets/images/image_1.png",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DetailsPage()),
                    );
                  },
                ),
              ],
            ),
          ),
          HeadLineWidget(title: "Featured", press: (){}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FeatureImage(press: (){}, image: "assets/images/bottom_img_1.png",),
                FeatureImage(press: (){}, image: "assets/images/bottom_img_2.png",),
                FeatureImage(press: (){}, image: "assets/images/bottom_img_1.png",),
                FeatureImage(press: (){}, image: "assets/images/bottom_img_2.png",),
              ],
            ),
          )

        ],
      ),
    );
  }
}
