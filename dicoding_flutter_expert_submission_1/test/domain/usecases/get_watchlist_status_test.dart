import 'package:ditonton/domain/usecases/get_watchlist_status.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late GetWatchListStatus usecase;
  late MockWatchlistRepository _repository;

  setUp(() {
    _repository = MockWatchlistRepository();
    usecase = GetWatchListStatus(_repository);
  });

  test('should get watchlist status from repository', () async {
    // arrange
    when(_repository.isAddedToWatchlist(1))
        .thenAnswer((_) async => true);
    // act
    final result = await usecase.execute(1);
    // assert
    expect(result, true);
  });
}
