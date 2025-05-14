import 'package:dartz/dartz.dart';
import 'package:core/core.dart';
import 'package:core/domain/entities/tv_serie_detail.dart';
import 'package:core/domain/repositories/tv_serie_repository.dart';

class GetTvSerieDetail {
  final TvSerieRepository _repository;

  GetTvSerieDetail(this._repository);

  Future<Either<Failure, TvSerieDetail>> execute(int id) {
    return _repository.getTvSerieDetail(id);
  }
}
