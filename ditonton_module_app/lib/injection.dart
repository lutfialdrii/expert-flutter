import 'package:core/data/datasources/db/database_helper.dart';
import 'package:core/data/datasources/watchlist_local_data_source.dart';
import 'package:core/data/datasources/movie_remote_data_source.dart';
import 'package:core/data/datasources/tv_serie_remote_data_source.dart';
import 'package:core/data/repositories/movie_repository_impl.dart';
import 'package:core/data/repositories/tv_serie_repository_impl.dart';
import 'package:core/data/repositories/watchlist_repository_impl.dart';
import 'package:core/domain/repositories/movie_repository.dart';
import 'package:core/domain/repositories/tv_serie_repository.dart';
import 'package:core/domain/repositories/watchlist_repository.dart';
import 'package:core/domain/usecases/get_movie_detail.dart';
import 'package:core/domain/usecases/get_movie_recommendations.dart';
import 'package:core/domain/usecases/get_now_playing_movies.dart';
import 'package:core/domain/usecases/get_onair_tv_series.dart';
import 'package:core/domain/usecases/get_popular_movies.dart';
import 'package:core/domain/usecases/get_popular_tv_series.dart';
import 'package:core/domain/usecases/get_top_rated_movies.dart';
import 'package:core/domain/usecases/get_top_rated_tv_series.dart';
import 'package:core/domain/usecases/get_tv_serie_detail.dart';
import 'package:core/domain/usecases/get_tv_serie_recommendations.dart';
import 'package:core/domain/usecases/get_watchlist.dart';
import 'package:core/domain/usecases/get_watchlist_status.dart';
import 'package:core/domain/usecases/remove_watchlist.dart';
import 'package:core/domain/usecases/save_watchlist.dart';
import 'package:core/presentation/provider/movie_detail_notifier.dart';
import 'package:core/presentation/provider/home_notifier.dart';
import 'package:core/presentation/provider/popular_tv_series_notifier.dart';
import 'package:core/presentation/provider/popular_movies_notifier.dart';
import 'package:core/presentation/provider/top_rated_movies_notifier.dart';
import 'package:core/presentation/provider/top_rated_tv_series_notifier.dart';
import 'package:core/presentation/provider/tv_serie_detail_notifier.dart';
import 'package:core/presentation/provider/watchlist_movie_notifier.dart';
import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';
import 'package:search/search.dart';

final locator = GetIt.instance;

void init() {
  // provider
  locator.registerFactory(
    () => HomeNotifier(
      getNowPlayingMovies: locator(),
      getPopularMovies: locator(),
      getTopRatedMovies: locator(),
      getOnairTvSeries: locator(),
      getPopularTvSeries: locator(),
      getTopRatedTvSeries: locator(),
    ),
  );
  locator.registerFactory(
    () => MovieDetailNotifier(
      getMovieDetail: locator(),
      getMovieRecommendations: locator(),
      getWatchListStatus: locator(),
      saveWatchlist: locator(),
      removeWatchlist: locator(),
    ),
  );
  locator.registerFactory(
    () => SearchNotifier(
      searchMovies: locator(),
      searchTvSeries: locator(),
    ),
  );
  locator.registerFactory(
    () => PopularMoviesNotifier(
      locator(),
    ),
  );
  locator.registerFactory(
    () => TopRatedMoviesNotifier(
      getTopRatedMovies: locator(),
    ),
  );
  locator.registerFactory(
    () => WatchlistNotifier(
      getWatchlist: locator(),
    ),
  );

  locator.registerFactory(
    () => PopularTvSeriesNotifier(
      locator(),
    ),
  );
  locator.registerFactory(
    () => TopRatedTvSeriesNotifier(
      getTopRatedTvSeries: locator(),
    ),
  );
  locator.registerFactory(
    () => TvSerieDetailNotifier(
      getTvSerieDetail: locator(),
      getTvSerieRecommendations: locator(),
      saveWatchlist: locator(),
      getWatchListStatus: locator(),
      removeWatchlist: locator(),
    ),
  );

  // === use case ===

  // movies
  locator.registerLazySingleton(() => GetNowPlayingMovies(locator()));
  locator.registerLazySingleton(() => GetPopularMovies(locator()));
  locator.registerLazySingleton(() => GetTopRatedMovies(locator()));
  locator.registerLazySingleton(() => GetMovieDetail(locator()));
  locator.registerLazySingleton(() => GetMovieRecommendations(locator()));
  locator.registerLazySingleton(() => SearchMovies(locator()));

  // TV Series
  locator.registerLazySingleton(() => GetPopularTvSeries(locator()));
  locator.registerLazySingleton(() => GetTopRatedTvSeries(locator()));
  locator.registerLazySingleton(() => GetOnairTvSeries(locator()));
  locator.registerLazySingleton(() => GetTvSerieRecommendations(locator()));
  locator.registerLazySingleton(() => GetTvSerieDetail(locator()));
  locator.registerLazySingleton(() => SearchTvSeries(locator()));

  locator.registerLazySingleton(() => GetWatchListStatus(locator()));
  locator.registerLazySingleton(() => SaveWatchlist(locator()));
  locator.registerLazySingleton(() => RemoveWatchlist(locator()));
  locator.registerLazySingleton(() => GetWatchlist(locator()));

  // repository
  locator.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(
      remoteDataSource: locator(),
    ),
  );
  locator.registerLazySingleton<TvSerieRepository>(
    () => TvSerieRepositoryImpl(
      remoteDataSource: locator(),
    ),
  );

  locator.registerLazySingleton<WatchlistRepository>(
    () => WatchlistRepositoryImpl(
      localDataSource: locator(),
    ),
  );

  // data sources
  locator.registerLazySingleton<MovieRemoteDataSource>(
      () => MovieRemoteDataSourceImpl(client: locator()));

  locator.registerLazySingleton<TvSerieRemoteDataSource>(
      () => TvSerieRemoteDataSourceImpl(client: locator()));

  locator.registerLazySingleton<WatchlistLocalDataSource>(
      () => WatchlistLocalDataSourceImpl(databaseHelper: locator()));

  // helper
  locator.registerLazySingleton<DatabaseHelper>(() => DatabaseHelper());

  // external
  locator.registerLazySingleton(() => http.Client());
}
