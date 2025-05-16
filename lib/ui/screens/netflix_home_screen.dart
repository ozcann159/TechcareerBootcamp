import 'package:flutter/material.dart';
import 'package:netflix_ui/data/entity/images_card.dart';
import 'package:netflix_ui/ui/components/featured_movied.dart';
import 'package:netflix_ui/ui/components/load_trend_movie.dart';
import 'package:netflix_ui/ui/components/load_trending_now.dart';
import 'package:netflix_ui/ui/components/movie_card.dart';

class NetflixHomeScreen extends StatefulWidget {
  const NetflixHomeScreen({super.key});

  @override
  State<NetflixHomeScreen> createState() => _NetflixHomeScreenState();
}

class _NetflixHomeScreenState extends State<NetflixHomeScreen> {
  Future<List<ImagesCard>> loadImages() async {
    return [
      ImagesCard(id: 1, name: "lupin", image: "lupin.png"),
      ImagesCard(id: 2, name: "hustle", image: "hustle.png"),
      ImagesCard(id: 3, name: "n7", image: "n7.png"),
      ImagesCard(id: 4, name: "n9", image: "n9.png"),
      ImagesCard(id: 5, name: "peakyblinders", image: "peakyblinders.png"),
      ImagesCard(id: 6, name: "spiderhead", image: "spiderhead.png"),
      ImagesCard(id: 7, name: "ironchef", image: "ironchef.png"),
      ImagesCard(id: 8, name: "manvsbee", image: "manvsbee.png"),
      ImagesCard(id: 9, name: "love&gelato", image: "love&gelato.png"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FeatureMovieCard(image: const AssetImage("assets/movie20.jpg")),
            loadTrendMovie(),
            SizedBox(height: 10,),
            LoadTrendingNow(),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(String text) {
    return MaterialButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Colors.white38),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildCategoryButtonWithIcon(String text, IconData icon) {
    return MaterialButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Colors.white38),
      ),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(icon, color: Colors.white),
        ],
      ),
    );
  }
}

