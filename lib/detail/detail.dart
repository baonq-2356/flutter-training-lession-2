import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lession_2/gen/assets.gen.dart';
import 'package:lession_2/widgets/triangle.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../data/model/movie/movie.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;
  const MovieDetailScreen({super.key, required this.movie});

  final imagePath = "https://image.tmdb.org/t/p/w500/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.white,
          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
        ),
        title: const Text(
          'Movie Detail',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: Expanded(
                child: SizedBox(
                  height: 240,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    children: [
                      Stack(
                        fit: StackFit.expand,
                        children: [
                          FadeInImage(
                            placeholder: AssetImage(
                              Assets.images.imgPlaceholder.path,
                            ),
                            image: NetworkImage(
                              '$imagePath${movie.backdropPath}',
                            ),
                            fit: BoxFit.cover,
                          ),
                          ClipPath(
                            clipper: Triagle(),
                            child: Container(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        left: 16,
                        bottom: 12,
                        child: SizedBox(
                          width: 120.0,
                          height: 160.0,
                          child: FadeInImage(
                            placeholder: AssetImage(
                              Assets.images.imgPlaceholder.path,
                            ),
                            image: NetworkImage(
                              '$imagePath${movie.posterPath}',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      movie.title ?? "",
                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(width: 24.0),
                  CircularPercentIndicator(
                    radius: 16.0,
                    animation: true,
                    animationDuration: 1000,
                    lineWidth: 4.0,
                    percent: 0.65,
                    center: Text(
                      "${movie.voteAverage?.toStringAsFixed(1)}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                        color: Color(0xff9e9e9e),
                      ),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: const Color(0xff9e9e9e),
                    progressColor: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: Color(0xffd3d1d1),
                    width: 1.5,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          Assets.images.icReview.path,
                          width: 24,
                          height: 24,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(height: 4.0),
                        const Text(
                          'Reviews',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          Assets.images.icTrailer.path,
                          width: 24,
                          height: 24,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(height: 4.0),
                        const Text(
                          'Trailers',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffd3d1d1),
                    width: 1.5,
                  ),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 14.0, horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Text(
                          'Genre',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 2.0),
                        Text(
                          'Drama',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          'Release',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 2.0),
                        Text(
                          movie.releaseDate ?? "",
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                movie.overview ?? "",
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
