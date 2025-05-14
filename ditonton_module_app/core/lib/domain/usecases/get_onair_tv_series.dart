import 'package:dartz/dartz.dart';
import 'package:core/domain/entities/tv_serie.dart';
import 'package:core/domain/repositories/tv_serie_repository.dart';

import 'package:core/core.dart';

class GetOnairTvSeries {
  final TvSerieRepository repository;

  GetOnairTvSeries(this.repository);

  Future<Either<Failure, List<TvSerie>>> execute() {
    return repository.getOnairTvSeries();
  }
}
