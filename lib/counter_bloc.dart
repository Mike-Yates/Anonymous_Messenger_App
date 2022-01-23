import 'dart:async';
import 'package:anonymous_commenter_app/counter_event.dart';

class CounterBloc{
  int _counter = 0;

  final _counterStateController = StreamController<int>();  // input is the sink, output is the stream. they both go through this
  StreamSink<int> get _inCounter => _counterStateController.sink;
  Stream<int> get counter => _counterStateController.stream;

  final _counterEventController = StreamController<CounterEvent>();  // input is the sink, output is the stream. they both go through this
  StreamSink<CounterEvent> get counterEventSink => _counterEventController.sink;

  CounterBloc(){
    _counterEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(CounterEvent event){
    if(event is IncrementEvent){
      _counter++;
    } else {
      _counter--;
    }
    _inCounter.add(_counter);
  }

  void dispose() {
    _counterStateController.close();
    _counterEventController.close();
  }

}