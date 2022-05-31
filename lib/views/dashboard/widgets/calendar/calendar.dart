import 'package:admin_lte/views/components/components_files.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../core/core.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  bool closed = false;
  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.h(8)),
      child: LteCard(
        bgColor: Clr.success,
        header: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Ionicons.calendar_outline,
                  color: Clr.white,
                ),
                SizedBox(width: 6),
                Text(
                  "Calendar",
                  style: TextStyle(
                    color: Clr.white,
                    fontSize: Sizes.h(1.1.rem),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Material(
                  elevation: 0,
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => setState(() => closed = !closed),
                    child: SizedBox(
                      width: 32,
                      height: 32,
                      child: Center(
                        child: Icon(
                          closed ? Icons.add : Icons.remove,
                          color: Clr.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: AnimatedContainer(
          duration: Duration(milliseconds: 240),
          height: closed ? 0 : 360,
          child: SingleChildScrollView(
            controller: controller,
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 360,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 1.25.rem,
                      right: 1.25.rem,
                      bottom: 1.25.rem,
                    ),
                    child: TableCalendar(
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: DateTime.now(),
                      calendarStyle: CalendarStyle(
                          defaultTextStyle: TextStyle(
                        color: Colors.white,
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
