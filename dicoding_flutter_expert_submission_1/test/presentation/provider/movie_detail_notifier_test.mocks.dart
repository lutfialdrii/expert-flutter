// Mocks generated by Mockito 5.4.4 from annotations
// in ditonton/test/presentation/provider/movie_detail_notifier_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:dartz/dartz.dart' as _i3;
import 'package:ditonton/common/failure.dart' as _i7;
import 'package:ditonton/domain/entities/movie.dart' as _i10;
import 'package:ditonton/domain/entities/movie_detail.dart' as _i8;
import 'package:ditonton/domain/entities/watchlist.dart' as _i13;
import 'package:ditonton/domain/repositories/movie_repository.dart' as _i2;
import 'package:ditonton/domain/repositories/watchlist_repository.dart' as _i4;
import 'package:ditonton/domain/usecases/get_movie_detail.dart' as _i5;
import 'package:ditonton/domain/usecases/get_movie_recommendations.dart' as _i9;
import 'package:ditonton/domain/usecases/get_watchlist_status.dart' as _i11;
import 'package:ditonton/domain/usecases/remove_watchlist.dart' as _i14;
import 'package:ditonton/domain/usecases/save_watchlist.dart' as _i12;
import 'package:mockito/mockito.dart' as _i1;

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

class _FakeMovieRepository_0 extends _i1.SmartFake
    implements _i2.MovieRepository {
  _FakeMovieRepository_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeWatchlistRepository_2 extends _i1.SmartFake
    implements _i4.WatchlistRepository {
  _FakeWatchlistRepository_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [GetMovieDetail].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetMovieDetail extends _i1.Mock implements _i5.GetMovieDetail {
  MockGetMovieDetail() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.MovieRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeMovieRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.MovieRepository);

  @override
  _i6.Future<_i3.Either<_i7.Failure, _i8.MovieDetail>> execute(int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [id],
        ),
        returnValue: _i6.Future<_i3.Either<_i7.Failure, _i8.MovieDetail>>.value(
            _FakeEither_1<_i7.Failure, _i8.MovieDetail>(
          this,
          Invocation.method(
            #execute,
            [id],
          ),
        )),
      ) as _i6.Future<_i3.Either<_i7.Failure, _i8.MovieDetail>>);
}

/// A class which mocks [GetMovieRecommendations].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetMovieRecommendations extends _i1.Mock
    implements _i9.GetMovieRecommendations {
  MockGetMovieRecommendations() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.MovieRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeMovieRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.MovieRepository);

  @override
  _i6.Future<_i3.Either<_i7.Failure, List<_i10.Movie>>> execute(dynamic id) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [id],
        ),
        returnValue:
            _i6.Future<_i3.Either<_i7.Failure, List<_i10.Movie>>>.value(
                _FakeEither_1<_i7.Failure, List<_i10.Movie>>(
          this,
          Invocation.method(
            #execute,
            [id],
          ),
        )),
      ) as _i6.Future<_i3.Either<_i7.Failure, List<_i10.Movie>>>);
}

/// A class which mocks [GetWatchListStatus].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetWatchListStatus extends _i1.Mock
    implements _i11.GetWatchListStatus {
  MockGetWatchListStatus() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.WatchlistRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeWatchlistRepository_2(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i4.WatchlistRepository);

  @override
  _i6.Future<bool> execute(int? id) => (super.noSuchMethod(
        Invocation.method(
          #execute,
          [id],
        ),
        returnValue: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);
}

/// A class which mocks [SaveWatchlist].
///
/// See the documentation for Mockito's code generation for more information.
class MockSaveWatchlist extends _i1.Mock implements _i12.SaveWatchlist {
  MockSaveWatchlist() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.WatchlistRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeWatchlistRepository_2(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i4.WatchlistRepository);

  @override
  _i6.Future<_i3.Either<_i7.Failure, String>> execute(
          _i13.Watchlist? watchlist) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [watchlist],
        ),
        returnValue: _i6.Future<_i3.Either<_i7.Failure, String>>.value(
            _FakeEither_1<_i7.Failure, String>(
          this,
          Invocation.method(
            #execute,
            [watchlist],
          ),
        )),
      ) as _i6.Future<_i3.Either<_i7.Failure, String>>);
}

/// A class which mocks [RemoveWatchlist].
///
/// See the documentation for Mockito's code generation for more information.
class MockRemoveWatchlist extends _i1.Mock implements _i14.RemoveWatchlist {
  MockRemoveWatchlist() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.WatchlistRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeWatchlistRepository_2(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i4.WatchlistRepository);

  @override
  _i6.Future<_i3.Either<_i7.Failure, String>> execute(_i13.Watchlist? data) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [data],
        ),
        returnValue: _i6.Future<_i3.Either<_i7.Failure, String>>.value(
            _FakeEither_1<_i7.Failure, String>(
          this,
          Invocation.method(
            #execute,
            [data],
          ),
        )),
      ) as _i6.Future<_i3.Either<_i7.Failure, String>>);
}
