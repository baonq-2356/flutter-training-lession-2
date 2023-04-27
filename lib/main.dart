import 'package:flutter/material.dart';
import 'package:lession_2/data/repository/home_respository/home_repository_impl.dart';
import 'package:lession_2/home/home.dart';
import 'package:lession_2/home/home_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)  => HomeViewModel(homeRepository: HomeRepositoryImpl()))
        ],
        child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}
