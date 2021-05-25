import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:rxdart/rxdart.dart';
import 'package:syncfusion_demo/movas/observable/calendarO.dart';
import 'package:syncfusion_demo/movas/store/calendar_store.dart';
import 'package:movas/provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> storeProviders = [
  StoreProvider<CAlendarStore, AllMeetingO>(
    storeBuilder: (context) => CAlendarStore(
      StaticProvider.of(context),
    ),
  ),
];