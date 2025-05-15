import 'package:bloc_test/bloc_test.dart';
import 'package:counter_bloc/bloc/counter_bloc.dart';
import 'package:counter_bloc/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late CounterCubit _counterCubit;

  setUp(() {
    _counterCubit = CounterCubit();
  });

  test("pastiin counterstate(0)", () {
    expect(_counterCubit.state, CounterState(0));
  });

  blocTest<CounterCubit, CounterState>(
    "pastiin emit increment nambah 1",
    build: () => _counterCubit,
    act: (bloc) => bloc.increment(),
    expect: () => [CounterState(1)],
  );
}
