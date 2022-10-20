import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantationapp/const/const.dart';
import 'package:plantationapp/widgets/body.dart';
import 'package:plantationapp/widgets/bottom_navigation_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BodyWidget(),
      bottomNavigationBar: BottomNavigationWidget()
    );
  }
  AppBar buildAppBar(){
    return AppBar(
      elevation: 0,
      leading: IconButton(onPressed: (){},
          icon: SvgPicture.asset("assets/icons/menu.svg")),
    );
  }
}
