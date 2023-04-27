import 'package:flutter/material.dart';
import 'package:lession_2/data/model/movie/movie.dart';
import 'package:lession_2/detail/detail.dart';

import '../gen/assets.gen.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;

  const MovieItem({super.key, required this.movie});

  final imagePath = "https://image.tmdb.org/t/p/w500/";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MovieDetailScreen(movie: movie),
            ),
          );
        },
        splashColor: Colors.black12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 126.0,
              height: 168.0,
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
            const SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    movie.title ?? "",
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    movie.overview ?? "",
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
