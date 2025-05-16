import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final ImageProvider image;

  const MovieCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.antiAlias,
      child: Image(
        image: image,
        fit: BoxFit.cover,
      ),
    );
  }
}
