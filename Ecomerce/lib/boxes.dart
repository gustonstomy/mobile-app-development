import 'package:flutter/material.dart';

class Boxes extends StatelessWidget {
  const Boxes(
      {super.key,
      required this.image,
      required this.width,
      required this.height});

  final String image;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      child: Center(
        child: SizedBox(
          child: Image.asset(image),
        ),
      ),
    );
  }
}

class BoxesWithName extends StatelessWidget {
  const BoxesWithName(
      {super.key,
      required this.name,
      required this.image,
      required this.width,
      required this.height});
  final String image;
  final double height;
  final double width;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Boxes(image: image, width: width, height: height),
        const SizedBox(
          height: 8,
        ),
        Text(name)
      ],
    );
  }
}
