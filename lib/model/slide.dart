import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;

  Slide({
    @required this.imageUrl,
});
}

final slideList = [
  Slide(
    imageUrl: 'assets/image1.jpg',
  ),
  Slide(
    imageUrl: 'assets/image2.jpg',
  ),
  Slide(
    imageUrl: 'assets/image3.png',
  ),
  Slide(
    imageUrl: 'assets/image4.jpg',
  ),
  Slide(
    imageUrl: 'assets/image5.jpg',
  ),
  Slide(
    imageUrl: 'assets/image6.jpg',
  ),
];