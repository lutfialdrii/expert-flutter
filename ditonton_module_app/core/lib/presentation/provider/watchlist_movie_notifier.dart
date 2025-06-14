import 'package:core/core.dart';
import 'package:core/domain/entities/watchlist.dart';
import 'package:core/domain/usecases/get_watchlist.dart';
import 'package:flutter/foundation.dart';

class WatchlistNotifier extends ChangeNotifier {
  var _watchlist = <Watchlist>[];
  List<Watchlist> get watchlist => _watchlist;

  var _watchlistState = RequestState.Empty;
  RequestState get watchlistState => _watchlistState;

  String _message = '';
  String get message => _message;

  WatchlistNotifier({required this.getWatchlist});

  final GetWatchlist getWatchlist;

  Future<void> fetchWatchlist() async {
    _watchlistState = RequestState.Loading;
    notifyListeners();

    final result = await getWatchlist.execute();
    result.fold(
      (failure) {
        _watchlistState = RequestState.Error;
        _message = failure.message;
        notifyListeners();
      },
      (data) {
        _watchlistState = RequestState.Loaded;
        _watchlist = data;
        notifyListeners();
      },
    );
  }
}
