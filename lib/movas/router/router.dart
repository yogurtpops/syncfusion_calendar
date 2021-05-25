import 'package:movas/router/router.dart';
import 'package:syncfusion_demo/movas/ui/calendar/calendar_screen.dart';

var router = Router(
  initialRoute: RouteName.calendar,
  useDemo: false,
  routes: {
    RouteName.calendar: (context) => CalendarScreen(),

  },
  demoRoutes: {},
);

class RouteName {
  static const String calendar = "calendar";
}