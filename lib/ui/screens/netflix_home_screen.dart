import 'package:flutter/material.dart';
import 'package:netflix_ui/ui/components/featured_movied.dart';
import 'package:netflix_ui/ui/components/load_trend_movie.dart';
import 'package:netflix_ui/ui/components/load_trending_now.dart';


class NetflixHomeScreen extends StatefulWidget {
  const NetflixHomeScreen({super.key});

  @override
  State<NetflixHomeScreen> createState() => _NetflixHomeScreenState();
}

class _NetflixHomeScreenState extends State<NetflixHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FeatureMovieCard(image: const AssetImage("assets/movie20.jpg")),
                loadTrendMovie(),
                SizedBox(height: 10),
                LoadTrendingNow(),
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.5),
                    Colors.black.withOpacity(0),
                  ],
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage("assets/netflix_icon.png"),
                            fit: BoxFit.contain,
                            height: 38,
                          ),
                          Row(
                            children: [
                              Icon(Icons.cast_outlined, color: Colors.white),
                              SizedBox(width: 10),
                              Icon(Icons.person, color: Colors.white),
                              SizedBox(width: 10),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "TV Shows",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text("Movies", style: TextStyle(color: Colors.white)),
                          Text(
                            "Categories",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
