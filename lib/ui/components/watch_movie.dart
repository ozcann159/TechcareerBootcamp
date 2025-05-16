import 'package:flutter/material.dart';
import 'package:netflix_ui/ui/components/movie_card.dart';

class WatchMovieCard extends StatelessWidget {
  final ImageProvider image;

  const WatchMovieCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(8),),
        clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            width: 110,
            height: 180,
            
          
            child: Image(image: image, fit: BoxFit.cover),
          ),
          SizedBox(
            width: 110,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.info_outline), Icon(Icons.more_vert)],
            ),
          ),
        ],
      ),
    );
  }
}

Column LoadTrendingNow() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          "Popular on Netflix",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
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
