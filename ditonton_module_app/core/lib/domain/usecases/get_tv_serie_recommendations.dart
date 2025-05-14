import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:core/domain/entities/tv_serie.dart';
import 'package:core/domain/repositories/tv_serie_repository.dart';

class GetTvSerieRecommendations {
  final TvSerieRepository _repository;

  GetTvSerieRecommendations(this._repository);

  Future<Either<Failure, List<TvSerie>>> execute(id) {
    return _repository.getTvSerieRecommendations(id);
  }
}
