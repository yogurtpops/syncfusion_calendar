import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:rxdart/rxdart.dart';
import 'package:syncfusion_demo/movas/observable/calendarO.dart';

List<SingleChildWidget> streamProviders = [
  Provider<BehaviorSubject<AllMeetingO>>(
    lazy: false,
    create: (context) => BehaviorSubject<AllMeetingO>(sync: true),
    dispose: (_, stream) => stream.close(),
  ),
  Provider<BehaviorSubject<AllMeetings>>(
    lazy: false,
    create: (context) => BehaviorSubject<AllMeetings>(sync: true),
    dispose: (_, stream) => stream.close(),
  ),
];