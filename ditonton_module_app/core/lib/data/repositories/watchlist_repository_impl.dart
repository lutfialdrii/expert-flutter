import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:core/data/datasources/watchlist_local_data_source.dart';
import 'package:core/data/models/watchlist_model.dart';
import 'package:core/domain/entities/watchlist.dart';
import 'package:core/domain/repositories/watchlist_repository.dart';

class WatchlistRepositoryImpl implements WatchlistRepository {
  final WatchlistLocalDataSource localDataSource;

  WatchlistRepositoryImpl({required this.localDataSource});
  @override
  Future<Either<Failure, String>> saveWatchlist(Watchlist data) async {
    try {
      final result = await localDataSource
          .insertWatchlist(WatchlistModel.fromEntity(data));
      return Right(result);
    } on DatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<Either<Failure, String>> removeWatchlist(Watchlist data) async {
    try {
      final result = await localDataSource
          .removeWatchlist(WatchlistModel.fromEntity(data));
      return Right(result);
    } on DatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    }
  }

  @override
  Future<bool> isAddedToWatchlist(int id) async {
    final result = await localDataSource.getMovieById(id);
    return result != null;
  }

  @override
  Future<Either<Failure, List<Watchlist>>> getWatchlist() async {
    try {
      final result = await localDataSource.getWatchlist();
      return Right(result.map((e) => e.toEntity()).toList());
    } on DatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    }
  }
}
