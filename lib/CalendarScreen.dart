import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'const.dart';

class CalendarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<CalendarPage> {
  Object myView = CalendarView.day;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor("000080"),
        ),
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

    // chuseok
    DateTime startTime = DateTime(2020, 9, 21);
    appointments.add(Appointment(
      startTime: startTime,
      endTime: startTime.add(Duration(hours: 23)),
      subject: 'Chuseok',
      color: Colors.blue,
      startTimeZone: '',
      endTimeZone: '',
    ));

    // thanksgiving
    startTime = DateTime(2020, 11, 26);
    appointments.add(Appointment(
      startTime: startTime,
      endTime: startTime.add(Duration(hours: 23)),
      subject: 'Thanksgiving',
      color: Colors.orange,
      startTimeZone: '',
      endTimeZone: '',
    ));

    // black friday
    startTime = DateTime(2020, 11, 27);
    appointments.add(Appointment(
      startTime: startTime,
      endTime: startTime.add(Duration(hours: 23)),
      subject: 'Black Friday',
      color: Colors.blue,
      startTimeZone: '',
      endTimeZone: '',
    ));

    return _AppointmentDataSource(appointments);
  }
}

class _AppointmentDataSource extends CalendarDataSource {
  _AppointmentDataSource(List<Appointment> source) {
    appointments = source;
  }
}
