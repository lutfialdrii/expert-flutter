import 'dart:async';

enum CounterEvent { Increment, Decrement }

class CounterBloc {
  CounterBloc() {
    _eventController.stream.listen(_mapEventToState);
  }

  int counter = 0;

  StreamController<CounterEvent> _eventController =
      StreamController<CounterEvent>();
  StreamSink get eventSink => _eventController.sink;

  StreamController<int> _counterController = StreamController<int>();

  StreamSink<int> get _counterSink => _counterController.sink;
  Stream<int> get counterStream => _counterController.stream;

  void _mapEventToState(CounterEvent event) {
    if (event == CounterEvent.Increment) {
      counter++;
    } else {
      counter--;
    }

    _counterSink.add(counter);
  }

  void dispose() {
    _eventController.close();
    _counterController.close();
  }
}
