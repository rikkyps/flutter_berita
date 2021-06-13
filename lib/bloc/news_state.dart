part of 'news_bloc.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {}

class NewsLoaded extends NewsState {
  final List<News> news;
  final List<Trending> trending;

  NewsLoaded({this.news, this.trending});
}
