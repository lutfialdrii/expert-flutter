import 'package:core/domain/entities/movie.dart';
import 'package:core/domain/entities/tv_serie.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

import 'package:search/search.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchMovies searchMovies;
  final SearchTvSeries searchTvSeries;

  EventTransformer<T> debounce<T>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }

  SearchBloc(this.searchMovies, this.searchTvSeries) : super(SearchEmpty()) {
    on<OnQueryMovieChanged>((event, emit) async {
      final query = event.query;

      emit(SearchLoading());
      final result = await searchMovies.execute(query);

      result.fold(
        (l) {
          emit(SearchError(l.message));
        },
        (r) {
          emit(SearchMoviesHasData(r));
        },
      );
    }, transformer: debounce(const Duration(microseconds: 500)));

    on<OnQueryTvSerieChanged>((event, emit) async {
      final query = event.query;

      emit(SearchLoading());
      final result = await searchTvSeries.execute(query);

      result.fold(
        (l) {
          emit(SearchError(l.message));
        },
        (r) {
          emit(SearchTvSeriesHasData(r));
        },
      );
    });
  }
}
