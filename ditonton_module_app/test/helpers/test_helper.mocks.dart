// Mocks generated by Mockito 5.4.4 from annotations
// in ditonton/test/helpers/test_helper.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;
import 'dart:convert' as _i25;
import 'dart:typed_data' as _i26;

import 'package:core/core.dart' as _i8;
import 'package:core/data/datasources/db/database_helper.dart' as _i23;
import 'package:core/data/datasources/movie_remote_data_source.dart' as _i11;
import 'package:core/data/datasources/tv_serie_remote_data_source.dart' as _i16;
import 'package:core/data/datasources/watchlist_local_data_source.dart' as _i20;
import 'package:core/data/models/movie_detail_model.dart' as _i3;
import 'package:core/data/models/movie_model.dart' as _i12;
import 'package:core/data/models/tv_serie_detail_model.dart' as _i4;
import 'package:core/data/models/tv_serie_model.dart' as _i17;
import 'package:core/data/models/watchlist_model.dart' as _i21;
import 'package:core/domain/entities/movie.dart' as _i9;
import 'package:core/domain/entities/movie_detail.dart' as _i10;
import 'package:core/domain/entities/tv_serie.dart' as _i14;
import 'package:core/domain/entities/tv_serie_detail.dart' as _i15;
import 'package:core/domain/entities/watchlist.dart' as _i19;
import 'package:core/domain/repositories/movie_repository.dart' as _i6;
import 'package:core/domain/repositories/tv_serie_repository.dart' as _i13;
import 'package:core/domain/repositories/watchlist_repository.dart' as _i18;
import 'package:dartz/dartz.dart' as _i2;
import 'package:http/http.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i22;
import 'package:sqflite/sqflite.dart' as _i24;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMovieDetailResponse_1 extends _i1.SmartFake
    implements _i3.MovieDetailResponse {
  _FakeMovieDetailResponse_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTvSerieDetailModel_2 extends _i1.SmartFake
    implements _i4.TvSerieDetailModel {
  _FakeTvSerieDetailModel_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_3 extends _i1.SmartFake implements _i5.Response {
  _FakeResponse_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamedResponse_4 extends _i1.SmartFake
    implements _i5.StreamedResponse {
  _FakeStreamedResponse_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [MovieRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRepository extends _i1.Mock implements _i6.MovieRepository {
  MockMovieRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>> getNowPlayingMovies() =>
      (super.noSuchMethod(
        Invocation.method(
          #getNowPlayingMovies,
          [],
        ),
        returnValue: _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>.value(
            _FakeEither_0<_i8.Failure, List<_i9.Movie>>(
          this,
          Invocation.method(
            #getNowPlayingMovies,
            [],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>);

  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>> getPopularMovies() =>
      (super.noSuchMethod(
        Invocation.method(
          #getPopularMovies,
          [],
        ),
        returnValue: _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>.value(
            _FakeEither_0<_i8.Failure, List<_i9.Movie>>(
          this,
          Invocation.method(
            #getPopularMovies,
            [],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>);

  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>> getTopRatedMovies() =>
      (super.noSuchMethod(
        Invocation.method(
          #getTopRatedMovies,
          [],
        ),
        returnValue: _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>.value(
            _FakeEither_0<_i8.Failure, List<_i9.Movie>>(
          this,
          Invocation.method(
            #getTopRatedMovies,
            [],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>);

  @override
  _i7.Future<_i2.Either<_i8.Failure, _i10.MovieDetail>> getMovieDetail(
          int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieDetail,
          [id],
        ),
        returnValue:
            _i7.Future<_i2.Either<_i8.Failure, _i10.MovieDetail>>.value(
                _FakeEither_0<_i8.Failure, _i10.MovieDetail>(
          this,
          Invocation.method(
            #getMovieDetail,
            [id],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, _i10.MovieDetail>>);

  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>> getMovieRecommendations(
          int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieRecommendations,
          [id],
        ),
        returnValue: _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>.value(
            _FakeEither_0<_i8.Failure, List<_i9.Movie>>(
          this,
          Invocation.method(
            #getMovieRecommendations,
            [id],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>);

  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>> searchMovies(
          String? query) =>
      (super.noSuchMethod(
        Invocation.method(
          #searchMovies,
          [query],
        ),
        returnValue: _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>.value(
            _FakeEither_0<_i8.Failure, List<_i9.Movie>>(
          this,
          Invocation.method(
            #searchMovies,
            [query],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>);
}

/// A class which mocks [MovieRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRemoteDataSource extends _i1.Mock
    implements _i11.MovieRemoteDataSource {
  MockMovieRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<List<_i12.MovieModel>> getNowPlayingMovies() =>
      (super.noSuchMethod(
        Invocation.method(
          #getNowPlayingMovies,
          [],
        ),
        returnValue:
            _i7.Future<List<_i12.MovieModel>>.value(<_i12.MovieModel>[]),
      ) as _i7.Future<List<_i12.MovieModel>>);

  @override
  _i7.Future<List<_i12.MovieModel>> getPopularMovies() => (super.noSuchMethod(
        Invocation.method(
          #getPopularMovies,
          [],
        ),
        returnValue:
            _i7.Future<List<_i12.MovieModel>>.value(<_i12.MovieModel>[]),
      ) as _i7.Future<List<_i12.MovieModel>>);

  @override
  _i7.Future<List<_i12.MovieModel>> getTopRatedMovies() => (super.noSuchMethod(
        Invocation.method(
          #getTopRatedMovies,
          [],
        ),
        returnValue:
            _i7.Future<List<_i12.MovieModel>>.value(<_i12.MovieModel>[]),
      ) as _i7.Future<List<_i12.MovieModel>>);

  @override
  _i7.Future<_i3.MovieDetailResponse> getMovieDetail(int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieDetail,
          [id],
        ),
        returnValue: _i7.Future<_i3.MovieDetailResponse>.value(
            _FakeMovieDetailResponse_1(
          this,
          Invocation.method(
            #getMovieDetail,
            [id],
          ),
        )),
      ) as _i7.Future<_i3.MovieDetailResponse>);

  @override
  _i7.Future<List<_i12.MovieModel>> getMovieRecommendations(int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieRecommendations,
          [id],
        ),
        returnValue:
            _i7.Future<List<_i12.MovieModel>>.value(<_i12.MovieModel>[]),
      ) as _i7.Future<List<_i12.MovieModel>>);

  @override
  _i7.Future<List<_i12.MovieModel>> searchMovies(String? query) =>
      (super.noSuchMethod(
        Invocation.method(
          #searchMovies,
          [query],
        ),
        returnValue:
            _i7.Future<List<_i12.MovieModel>>.value(<_i12.MovieModel>[]),
      ) as _i7.Future<List<_i12.MovieModel>>);
}

/// A class which mocks [TvSerieRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvSerieRepository extends _i1.Mock implements _i13.TvSerieRepository {
  MockTvSerieRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i14.TvSerie>>> getOnairTvSeries() =>
      (super.noSuchMethod(
        Invocation.method(
          #getOnairTvSeries,
          [],
        ),
        returnValue:
            _i7.Future<_i2.Either<_i8.Failure, List<_i14.TvSerie>>>.value(
                _FakeEither_0<_i8.Failure, List<_i14.TvSerie>>(
          this,
          Invocation.method(
            #getOnairTvSeries,
            [],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, List<_i14.TvSerie>>>);

  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i14.TvSerie>>>
      getPopularTvSeries() => (super.noSuchMethod(
            Invocation.method(
              #getPopularTvSeries,
              [],
            ),
            returnValue:
                _i7.Future<_i2.Either<_i8.Failure, List<_i14.TvSerie>>>.value(
                    _FakeEither_0<_i8.Failure, List<_i14.TvSerie>>(
              this,
              Invocation.method(
                #getPopularTvSeries,
                [],
              ),
            )),
          ) as _i7.Future<_i2.Either<_i8.Failure, List<_i14.TvSerie>>>);

  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i14.TvSerie>>>
      getTopRatedTvSeries() => (super.noSuchMethod(
            Invocation.method(
              #getTopRatedTvSeries,
              [],
            ),
            returnValue:
                _i7.Future<_i2.Either<_i8.Failure, List<_i14.TvSerie>>>.value(
                    _FakeEither_0<_i8.Failure, List<_i14.TvSerie>>(
              this,
              Invocation.method(
                #getTopRatedTvSeries,
                [],
              ),
            )),
          ) as _i7.Future<_i2.Either<_i8.Failure, List<_i14.TvSerie>>>);

  @override
  _i7.Future<_i2.Either<_i8.Failure, _i15.TvSerieDetail>> getTvSerieDetail(
          int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTvSerieDetail,
          [id],
        ),
        returnValue:
            _i7.Future<_i2.Either<_i8.Failure, _i15.TvSerieDetail>>.value(
                _FakeEither_0<_i8.Failure, _i15.TvSerieDetail>(
          this,
          Invocation.method(
            #getTvSerieDetail,
            [id],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, _i15.TvSerieDetail>>);

  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i14.TvSerie>>>
      getTvSerieRecommendations(int? id) => (super.noSuchMethod(
            Invocation.method(
              #getTvSerieRecommendations,
              [id],
            ),
            returnValue:
                _i7.Future<_i2.Either<_i8.Failure, List<_i14.TvSerie>>>.value(
                    _FakeEither_0<_i8.Failure, List<_i14.TvSerie>>(
              this,
              Invocation.method(
                #getTvSerieRecommendations,
                [id],
              ),
            )),
          ) as _i7.Future<_i2.Either<_i8.Failure, List<_i14.TvSerie>>>);

  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i14.TvSerie>>> searchTvSeries(
          String? query) =>
      (super.noSuchMethod(
        Invocation.method(
          #searchTvSeries,
          [query],
        ),
        returnValue:
            _i7.Future<_i2.Either<_i8.Failure, List<_i14.TvSerie>>>.value(
                _FakeEither_0<_i8.Failure, List<_i14.TvSerie>>(
          this,
          Invocation.method(
            #searchTvSeries,
            [query],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, List<_i14.TvSerie>>>);
}

/// A class which mocks [TvSerieRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvSerieRemoteDataSource extends _i1.Mock
    implements _i16.TvSerieRemoteDataSource {
  MockTvSerieRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<List<_i17.TvSerieModel>> getOnairTvSeries() => (super.noSuchMethod(
        Invocation.method(
          #getOnairTvSeries,
          [],
        ),
        returnValue:
            _i7.Future<List<_i17.TvSerieModel>>.value(<_i17.TvSerieModel>[]),
      ) as _i7.Future<List<_i17.TvSerieModel>>);

  @override
  _i7.Future<List<_i17.TvSerieModel>> getPopularTvSeries() =>
      (super.noSuchMethod(
        Invocation.method(
          #getPopularTvSeries,
          [],
        ),
        returnValue:
            _i7.Future<List<_i17.TvSerieModel>>.value(<_i17.TvSerieModel>[]),
      ) as _i7.Future<List<_i17.TvSerieModel>>);

  @override
  _i7.Future<List<_i17.TvSerieModel>> getTopRatedTvSeries() =>
      (super.noSuchMethod(
        Invocation.method(
          #getTopRatedTvSeries,
          [],
        ),
        returnValue:
            _i7.Future<List<_i17.TvSerieModel>>.value(<_i17.TvSerieModel>[]),
      ) as _i7.Future<List<_i17.TvSerieModel>>);

  @override
  _i7.Future<_i4.TvSerieDetailModel> getTVSerieDetail(int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTVSerieDetail,
          [id],
        ),
        returnValue:
            _i7.Future<_i4.TvSerieDetailModel>.value(_FakeTvSerieDetailModel_2(
          this,
          Invocation.method(
            #getTVSerieDetail,
            [id],
          ),
        )),
      ) as _i7.Future<_i4.TvSerieDetailModel>);

  @override
  _i7.Future<List<_i17.TvSerieModel>> getTvSerieRecommendations(int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTvSerieRecommendations,
          [id],
        ),
        returnValue:
            _i7.Future<List<_i17.TvSerieModel>>.value(<_i17.TvSerieModel>[]),
      ) as _i7.Future<List<_i17.TvSerieModel>>);

  @override
  _i7.Future<List<_i17.TvSerieModel>> searchTvSeries(String? query) =>
      (super.noSuchMethod(
        Invocation.method(
          #searchTvSeries,
          [query],
        ),
        returnValue:
            _i7.Future<List<_i17.TvSerieModel>>.value(<_i17.TvSerieModel>[]),
      ) as _i7.Future<List<_i17.TvSerieModel>>);
}

/// A class which mocks [WatchlistRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockWatchlistRepository extends _i1.Mock
    implements _i18.WatchlistRepository {
  MockWatchlistRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i2.Either<_i8.Failure, String>> saveWatchlist(
          _i19.Watchlist? data) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveWatchlist,
          [data],
        ),
        returnValue: _i7.Future<_i2.Either<_i8.Failure, String>>.value(
            _FakeEither_0<_i8.Failure, String>(
          this,
          Invocation.method(
            #saveWatchlist,
            [data],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, String>>);

  @override
  _i7.Future<_i2.Either<_i8.Failure, String>> removeWatchlist(
          _i19.Watchlist? data) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeWatchlist,
          [data],
        ),
        returnValue: _i7.Future<_i2.Either<_i8.Failure, String>>.value(
            _FakeEither_0<_i8.Failure, String>(
          this,
          Invocation.method(
            #removeWatchlist,
            [data],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, String>>);

  @override
  _i7.Future<bool> isAddedToWatchlist(int? id) => (super.noSuchMethod(
        Invocation.method(
          #isAddedToWatchlist,
          [id],
        ),
        returnValue: _i7.Future<bool>.value(false),
      ) as _i7.Future<bool>);

  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i19.Watchlist>>> getWatchlist() =>
      (super.noSuchMethod(
        Invocation.method(
          #getWatchlist,
          [],
        ),
        returnValue:
            _i7.Future<_i2.Either<_i8.Failure, List<_i19.Watchlist>>>.value(
                _FakeEither_0<_i8.Failure, List<_i19.Watchlist>>(
          this,
          Invocation.method(
            #getWatchlist,
            [],
          ),
        )),
      ) as _i7.Future<_i2.Either<_i8.Failure, List<_i19.Watchlist>>>);
}

/// A class which mocks [WatchlistLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockWatchlistLocalDataSource extends _i1.Mock
    implements _i20.WatchlistLocalDataSource {
  MockWatchlistLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<String> insertWatchlist(_i21.WatchlistModel? movie) =>
      (super.noSuchMethod(
        Invocation.method(
          #insertWatchlist,
          [movie],
        ),
        returnValue: _i7.Future<String>.value(_i22.dummyValue<String>(
          this,
          Invocation.method(
            #insertWatchlist,
            [movie],
          ),
        )),
      ) as _i7.Future<String>);

  @override
  _i7.Future<String> removeWatchlist(_i21.WatchlistModel? movie) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeWatchlist,
          [movie],
        ),
        returnValue: _i7.Future<String>.value(_i22.dummyValue<String>(
          this,
          Invocation.method(
            #removeWatchlist,
            [movie],
          ),
        )),
      ) as _i7.Future<String>);

  @override
  _i7.Future<_i21.WatchlistModel?> getMovieById(int? id) => (super.noSuchMethod(
        Invocation.method(
          #getMovieById,
          [id],
        ),
        returnValue: _i7.Future<_i21.WatchlistModel?>.value(),
      ) as _i7.Future<_i21.WatchlistModel?>);

  @override
  _i7.Future<List<_i21.WatchlistModel>> getWatchlist() => (super.noSuchMethod(
        Invocation.method(
          #getWatchlist,
          [],
        ),
        returnValue: _i7.Future<List<_i21.WatchlistModel>>.value(
            <_i21.WatchlistModel>[]),
      ) as _i7.Future<List<_i21.WatchlistModel>>);
}

/// A class which mocks [DatabaseHelper].
///
/// See the documentation for Mockito's code generation for more information.
class MockDatabaseHelper extends _i1.Mock implements _i23.DatabaseHelper {
  MockDatabaseHelper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i24.Database?> get database => (super.noSuchMethod(
        Invocation.getter(#database),
        returnValue: _i7.Future<_i24.Database?>.value(),
      ) as _i7.Future<_i24.Database?>);

  @override
  _i7.Future<int> insertWatchlist(_i21.WatchlistModel? data) =>
      (super.noSuchMethod(
        Invocation.method(
          #insertWatchlist,
          [data],
        ),
        returnValue: _i7.Future<int>.value(0),
      ) as _i7.Future<int>);

  @override
  _i7.Future<int> removeWatchlist(_i21.WatchlistModel? data) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeWatchlist,
          [data],
        ),
        returnValue: _i7.Future<int>.value(0),
      ) as _i7.Future<int>);

  @override
  _i7.Future<Map<String, dynamic>?> getMovieById(int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #getMovieById,
          [id],
        ),
        returnValue: _i7.Future<Map<String, dynamic>?>.value(),
      ) as _i7.Future<Map<String, dynamic>?>);

  @override
  _i7.Future<List<Map<String, dynamic>>> getWatchlistMovies() =>
      (super.noSuchMethod(
        Invocation.method(
          #getWatchlistMovies,
          [],
        ),
        returnValue: _i7.Future<List<Map<String, dynamic>>>.value(
            <Map<String, dynamic>>[]),
      ) as _i7.Future<List<Map<String, dynamic>>>);
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpClient extends _i1.Mock implements _i5.Client {
  MockHttpClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i5.Response> head(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #head,
          [url],
          {#headers: headers},
        ),
        returnValue: _i7.Future<_i5.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #head,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i7.Future<_i5.Response>);

  @override
  _i7.Future<_i5.Response> get(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [url],
          {#headers: headers},
        ),
        returnValue: _i7.Future<_i5.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #get,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i7.Future<_i5.Response>);

  @override
  _i7.Future<_i5.Response> post(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i25.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i7.Future<_i5.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #post,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response>);

  @override
  _i7.Future<_i5.Response> put(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i25.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i7.Future<_i5.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #put,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response>);

  @override
  _i7.Future<_i5.Response> patch(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i25.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i7.Future<_i5.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #patch,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response>);

  @override
  _i7.Future<_i5.Response> delete(
    Uri? url, {
    Map<String, String>? headers,
    Object? body,
    _i25.Encoding? encoding,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [url],
          {
            #headers: headers,
            #body: body,
            #encoding: encoding,
          },
        ),
        returnValue: _i7.Future<_i5.Response>.value(_FakeResponse_3(
          this,
          Invocation.method(
            #delete,
            [url],
            {
              #headers: headers,
              #body: body,
              #encoding: encoding,
            },
          ),
        )),
      ) as _i7.Future<_i5.Response>);

  @override
  _i7.Future<String> read(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #read,
          [url],
          {#headers: headers},
        ),
        returnValue: _i7.Future<String>.value(_i22.dummyValue<String>(
          this,
          Invocation.method(
            #read,
            [url],
            {#headers: headers},
          ),
        )),
      ) as _i7.Future<String>);

  @override
  _i7.Future<_i26.Uint8List> readBytes(
    Uri? url, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #readBytes,
          [url],
          {#headers: headers},
        ),
        returnValue: _i7.Future<_i26.Uint8List>.value(_i26.Uint8List(0)),
      ) as _i7.Future<_i26.Uint8List>);

  @override
  _i7.Future<_i5.StreamedResponse> send(_i5.BaseRequest? request) =>
      (super.noSuchMethod(
        Invocation.method(
          #send,
          [request],
        ),
        returnValue:
            _i7.Future<_i5.StreamedResponse>.value(_FakeStreamedResponse_4(
          this,
          Invocation.method(
            #send,
            [request],
          ),
        )),
      ) as _i7.Future<_i5.StreamedResponse>);

  @override
  void close() => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
