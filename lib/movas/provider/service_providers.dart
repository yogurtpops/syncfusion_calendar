import 'package:movas/movas.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:rxdart/rxdart.dart';
import 'package:syncfusion_demo/movas/observable/calendarO.dart';
import 'package:syncfusion_demo/movas/service/calendar_mock_service.dart';
import 'package:syncfusion_demo/movas/service/calendar_service.dart';

List<SingleChildWidget> serviceProviders = [
  Provider<CAlendarService>(
    create: (context) => CalendarMockService(
      StaticProvider.of(context),
    ),
  ),
];
