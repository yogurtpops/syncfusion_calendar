import 'dart:convert';
import 'package:flutter/material.dart';

class MeetingO {
  final String eventName;
  final DateTime from;
  final DateTime to;
  final Color background;
  final bool isAllDay;

  MeetingO({this.eventName, this.from, this.to, this.background, this.isAllDay});

  factory MeetingO.fromMeeting(Meeting meeting) {
    return MeetingO(eventName: meeting.eventName, from: meeting.from, to: meeting.to, background: meeting.background, isAllDay: meeting.isAllDay);
  }
}

class AllMeetingO {
  final List<MeetingO> meetingsO;

  AllMeetingO(this.meetingsO);

  factory AllMeetingO.fromAllMeeting(AllMeetings allMeetings) {
    List<MeetingO> meetingsO = List();
    for (var i in allMeetings.meetings) {
      meetingsO.add(MeetingO.fromMeeting(i));
    }

    return AllMeetingO(meetingsO);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is AllMeetingO &&
              runtimeType == other.runtimeType &&
              meetingsO == other.meetingsO;

  @override
  int get hashCode => meetingsO.hashCode;
}

class AllMeetings {
  final List<Meeting> meetings;

  AllMeetings(this.meetings);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is AllMeetings &&
              runtimeType == other.runtimeType &&
              meetings == other.meetings;

  @override
  int get hashCode => meetings.hashCode;
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}