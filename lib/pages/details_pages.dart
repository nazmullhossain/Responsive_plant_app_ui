import 'package:flutter/material.dart';
import 'package:plantationapp/pages/details_body.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text("Plant"),
      // ),
      body: DetailsBody(),
    );
  }
}
