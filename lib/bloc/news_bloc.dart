import 'dart:async';

import 'package:bloc/bloc.dart';
import '../models/trending.dart';
import '../models/news.dart';
import 'package:flutter_berita/services/news_services.dart';
import 'package:meta/meta.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsInitial());

  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    if (event is GetNews) {
      if (state is NewsInitial) {
        yield NewsLoaded(news: [], trending: []);
      } else {
        List<News> news = await NewsServices.getNews();
        List<Trending> trending = await NewsServices.getTrendingNews();
        yield NewsLoaded(news: news, trending: trending);
      }
    }
  }
}
