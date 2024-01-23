import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _HomeState();
}

class _HomeState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 250,
            width: double.infinity,
            child: AnotherCarousel(images: const [
              AssetImage("jpgs/banner1.jpg"),
              AssetImage("jpgs/banner2.jpg"),
            ],),
          )
        ],
      ),
    );
  }
}

