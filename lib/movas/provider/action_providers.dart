import 'package:movas/movas.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:syncfusion_demo/movas/action/calendar_action.dart';

List<SingleChildWidget> actionProviders = [
  Provider<CalendarAction>(
    lazy: false,
    create: (context) => CalendarAction(
      context
  )),
];