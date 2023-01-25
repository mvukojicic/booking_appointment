import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DatePicker extends StatefulWidget {
  DatePicker({super.key, required this.setDateTime});

  void Function(DateTime) setDateTime;

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final _firstDay = DateTime.now();
  final _lastDay = DateTime.utc(2030);
  final _focusedDay = DateTime.now();
  late DateTime _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 40),
      child: TableCalendar(
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
          rightChevronIcon: Icon(
            Icons.chevron_right_sharp,
            size: 30,
            color: Colors.blueAccent,
          ),
          leftChevronIcon: Icon(
            Icons.chevron_left_sharp,
            size: 30,
            color: Colors.blueAccent,
          ),
        ),
        focusedDay: _focusedDay,
        firstDay: _firstDay,
        lastDay: _lastDay,
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          widget.setDateTime(selectedDay);
          setState(() {
            _selectedDay = selectedDay;
          });
        },
        startingDayOfWeek: StartingDayOfWeek.monday,
        daysOfWeekHeight: 50,
      ),
    );
  }
}
