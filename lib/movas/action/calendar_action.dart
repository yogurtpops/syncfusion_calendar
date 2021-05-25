import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_demo/movas/service/calendar_service.dart';

class CalendarAction {

  final BuildContext context;

  CalendarAction(this.context);

  Future<void> showSchedule(){
    Provider.of<CAlendarService>(context, listen: false).getMeetings();
  }

}