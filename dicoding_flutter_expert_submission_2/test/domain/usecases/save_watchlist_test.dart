import 'package:dartz/dartz.dart';
import 'package:ditonton/domain/usecases/save_watchlist.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_objects.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late SaveWatchlist usecase;
  late MockWatchlistRepository mockWatchlistRepository;

  setUp(() {
    mockWatchlistRepository = MockWatchlistRepository();
    usecase = SaveWatchlist(mockWatchlistRepository);
  });

  test('should save movie/tv serie to the repository', () async {
    // arrange
    when(mockWatchlistRepository.saveWatchlist(testWatchlistMovie))
        .thenAnswer((_) async => Right('Added to Watchlist'));
    // act
    final result = await usecase.execute(testWatchlistMovie);
    // assert
    verify(mockWatchlistRepository.saveWatchlist(testWatchlistMovie));
    expect(result, Right('Added to Watchlist'));
  });
}
