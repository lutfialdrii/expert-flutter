import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:core/domain/entities/watchlist.dart';
import 'package:core/domain/repositories/watchlist_repository.dart';

class GetWatchlist {
  final WatchlistRepository _repository;

  GetWatchlist(this._repository);

  Future<Either<Failure, List<Watchlist>>> execute() {
    return _repository.getWatchlist();
  }
}
