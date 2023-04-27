import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lession_2/home/home_viewmodel.dart';
import 'package:lession_2/widgets/item_movie.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HomeViewModel>().getPopularMovies();
  }

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
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'Popular',
            style: TextStyle(
              color: Colors.black,
              fontSize: 28.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Consumer(
        builder: (context, ref, _) => ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: context.watch<HomeViewModel>().movies.length,
          itemBuilder: (context, index) {
            return MovieItem(
              movie: context.watch<HomeViewModel>().movies[index],
            );
          },
        ),
      ),
    );
  }
}
