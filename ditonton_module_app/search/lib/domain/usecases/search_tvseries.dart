import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:core/domain/entities/tv_serie.dart';
import 'package:core/domain/repositories/tv_serie_repository.dart';

class SearchTvSeries {
  final TvSerieRepository repository;

  SearchTvSeries(this.repository);

  Future<Either<Failure, List<TvSerie>>> execute(String query) {
    return repository.searchTvSeries(query);
  }
}
