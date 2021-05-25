import 'dart:ui';

import 'package:rxdart/rxdart.dart';
import 'package:syncfusion_demo/movas/observable/calendarO.dart';
import 'package:syncfusion_demo/movas/service/calendar_service.dart';

class CalendarMockService implements CAlendarService {

  final BehaviorSubject<AllMeetings> allMeetings$;

  CalendarMockService(this.allMeetings$);

  @override
  Future<void> getMeetings() {
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
      DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    meetings.add(
        Meeting('Conference', startTime, endTime, const Color(0xFF0F8644), false));

    allMeetings$.add(AllMeetings(meetings));
  }
}