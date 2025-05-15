part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object?> get props => [];
}

class OnQueryMovieChanged extends SearchEvent {
  final String query;

  const OnQueryMovieChanged(this.query);
}

class OnQueryTvSerieChanged extends SearchEvent {
  final String query;

  const OnQueryTvSerieChanged(this.query);
}
