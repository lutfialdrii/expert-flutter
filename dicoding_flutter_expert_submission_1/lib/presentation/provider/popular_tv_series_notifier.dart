import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_serie.dart';
import 'package:ditonton/domain/usecases/get_popular_tv_series.dart';
import 'package:flutter/foundation.dart';

class PopularTvSeriesNotifier extends ChangeNotifier {
  final GetPopularTvSeries getPopularTvSeries;

  PopularTvSeriesNotifier(this.getPopularTvSeries);

  RequestState _state = RequestState.Empty;
  RequestState get state => _state;

  List<TvSerie> _tvSeries = [];
  List<TvSerie> get tvSeries => _tvSeries;

  String _message = '';
  String get message => _message;

  Future<void> fetchPopularTvSeries() async {
    _state = RequestState.Loading;
    notifyListeners();

    final result = await getPopularTvSeries.execute();

    result.fold(
      (failure) {
        _message = failure.message;
        _state = RequestState.Error;
        notifyListeners();
      },
      (data) {
        _tvSeries = data;
        _state = RequestState.Loaded;
        notifyListeners();
      },
    );
  }
}
