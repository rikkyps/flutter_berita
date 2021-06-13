import 'package:flutter/material.dart';
import 'package:flutter_berita/bloc/news_bloc.dart';
import 'package:flutter_berita/pages/splash_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NewsBloc()..add(GetNews()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}