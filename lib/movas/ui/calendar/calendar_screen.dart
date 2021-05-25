import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_demo/movas/action/calendar_action.dart';
import 'package:syncfusion_demo/movas/observable/calendarO.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CalendarScreenState();
  }
}

class CalendarScreenState extends State<CalendarScreen> {


  @override
  Widget build(BuildContext context) {
    return Consumer<AllMeetingO>(builder: (context, _allMeetingsO, _){
      return _allMeetingsO==null ? Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ) : Scaffold(
          body: Container(
            child: SfCalendar(
              dataSource: MeetingDataSource(_allMeetingsO.meetingsO),
              monthViewSettings: MonthViewSettings(
                  appointmentDisplayMode: MonthAppointmentDisplayMode
                      .appointment),
            ),
          ));

    });
  }

  @override
  void initState() {
    WidgetsBinding.instance
        .addPostFrameCallback((_) => Provider.of<CalendarAction>(context, listen: false).showSchedule());
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<MeetingO> source){
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments[index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments[index].to;
  }

  @override
  String getSubject(int index) {
    return appointments[index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments[index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments[index].isAllDay;
  }
}

