import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:todo_app_new/Modules/taasks/widget/task_item_widget.dart';

class Taskesview extends StatefulWidget {
  const Taskesview({super.key});

  @override
  State<Taskesview> createState() => _TaskesviewState();
}

class _TaskesviewState extends State<Taskesview> {
  final EasyInfiniteDateTimelineController _controller =
      EasyInfiniteDateTimelineController();
  var _focusDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 60, horizontal: 50),
                width: mediaQuery.size.width,
                height: mediaQuery.size.height * .24,
                color: theme.primaryColor,
                alignment: Alignment.topLeft,
                child: Text(
                  textAlign: TextAlign.start,
                  'To Do List',
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Positioned(
                top: 150,
                child: SizedBox(
                  width: mediaQuery.size.width,
                  child: EasyInfiniteDateTimeLine(
                    controller: _controller,
                    firstDate: DateTime(2024),
                    focusDate: _focusDate,
                    lastDate: DateTime(2025, 12, 31),
                    onDateChange: (selectedDate) {
                      setState(() {
                        _focusDate = selectedDate;
                      });
                    },
                    dayProps: EasyDayProps(
                        activeDayStyle: DayStyle(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          dayNumStyle: TextStyle(
                              color: theme.primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                          monthStrStyle: TextStyle(
                              color: theme.primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                          dayStrStyle: TextStyle(
                              color: theme.primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                        inactiveDayStyle: DayStyle(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          dayNumStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                          monthStrStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                          dayStrStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        )),
                    showTimelineHeader: false,
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 2,
            itemBuilder: (context, index) => TaskItemWidget(),
          ),
        )
      ],
    );
  }
}
