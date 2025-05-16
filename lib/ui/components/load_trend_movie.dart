import 'package:flutter/material.dart';
import 'package:netflix_ui/ui/components/movie_card.dart';

class loadTrendMovie extends StatelessWidget {
  const loadTrendMovie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Popular on Netflix",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: const [
              MovieCard(image: AssetImage("assets/stranger.png")),
              SizedBox(width: 10),
              MovieCard(image: AssetImage("assets/hustle.png")),
              SizedBox(width: 10),
              MovieCard(image: AssetImage("assets/blasted.png")),
              SizedBox(width: 10),
              MovieCard(image: AssetImage("assets/lupin.png")),
              SizedBox(width: 10),
              MovieCard(image: AssetImage("assets/n9.png")),
            ],
          ),
        ),
      ],
    );
  }
} 