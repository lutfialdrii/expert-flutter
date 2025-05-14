import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:core/domain/entities/watchlist.dart';
import 'package:core/domain/repositories/watchlist_repository.dart';

class RemoveWatchlist {
  final WatchlistRepository repository;

  RemoveWatchlist(this.repository);

  Future<Either<Failure, String>> execute(Watchlist data) {
    return repository.removeWatchlist(data);
  }
}
