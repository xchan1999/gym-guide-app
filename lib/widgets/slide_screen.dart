import 'package:flutter/material.dart';
import 'package:gym_app_pratice/model/slide.dart';


class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(slideList[index].imageUrl),
              fit: BoxFit.fill)),
    );
  }
}
