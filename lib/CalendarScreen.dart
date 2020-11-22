import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<CalendarPage> {
  Object myView = CalendarView.day;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SfCalendar(
          view: myView,
        ));
  }
}

Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      body: Container(
        child: SfCalendar(
          view: CalendarView.week,
          dataSource: _getCalendarDataSource(),
        ),
      ),
    ),
  );
}

_AppointmentDataSource _getCalendarDataSource() {
  List<Appointment> appointments = <Appointment>[];
  appointments.add(Appointment(
    startTime: DateTime.now(),
    endTime: DateTime.now().add(Duration(minutes: 10)),
    subject: 'Meeting',
    color: Colors.blue,
    startTimeZone: '',
    endTimeZone: '',
  ));

  return _AppointmentDataSource(appointments);
}

class _AppointmentDataSource extends CalendarDataSource {
  _AppointmentDataSource(List<Appointment> source) {
    appointments = source;
  }
}

class Meeting {
  Meeting({this.eventName, this.from, this.to, this.background, this.isAllDay});

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
