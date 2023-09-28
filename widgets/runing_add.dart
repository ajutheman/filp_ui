import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class RunningAdd extends StatefulWidget {

  final int length;
  final List urls;
  const RunningAdd({super.key, required this.length, required this.urls});

  @override
  State<RunningAdd> createState() => _RunningAddState();
}

class _RunningAddState extends State<RunningAdd> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: widget.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(widget.urls[index]),
              fit: BoxFit.fill,
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: 200,
        aspectRatio: 16 / 9,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 1),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
