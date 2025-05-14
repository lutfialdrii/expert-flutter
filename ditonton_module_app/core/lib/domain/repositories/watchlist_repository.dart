import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:core/domain/entities/watchlist.dart';

abstract class WatchlistRepository {
  Future<Either<Failure, String>> saveWatchlist(Watchlist data);
  Future<Either<Failure, String>> removeWatchlist(Watchlist data);
  Future<bool> isAddedToWatchlist(int id);
  Future<Either<Failure, List<Watchlist>>> getWatchlist();
}
