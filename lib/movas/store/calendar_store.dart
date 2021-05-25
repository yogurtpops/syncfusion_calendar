import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:movas/movas.dart';
import 'package:rxdart/rxdart.dart';
import 'package:syncfusion_demo/movas/observable/calendarO.dart';

class CAlendarStore extends Store<AllMeetingO>{
  final BehaviorSubject<AllMeetings> allMeetings$;

  CAlendarStore(this.allMeetings$) {
    listen(allMeetings$, (AllMeetings _) async {
      add(AllMeetingO.fromAllMeeting(_));
    });
  }
}