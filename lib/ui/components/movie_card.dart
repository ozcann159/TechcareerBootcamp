// movie_card.dart
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final ImageProvider image;

  const MovieCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image(
            image: image,
            width: 120,
            height: 180,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 6),
        SizedBox(
          width: 110,
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.info_outline, color: Colors.white70, size: 18),
              SizedBox(width: 8),
              Icon(Icons.more_vert, color: Colors.white70, size: 18),
            ],
          ),
        ),
      ],
    );
  }
}
