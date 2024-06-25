import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pick/widgets/side_menu.dart';

class TaskByDate extends StatefulWidget {
  const TaskByDate({super.key});

  @override
  State<TaskByDate> createState() => _TaskByDateState();
}

class _TaskByDateState extends State<TaskByDate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TaskByDateAppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Действие при нажатии на кнопку
          },
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        drawer: SideMenu());
  }
}

class TaskByDateAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TaskByDateAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  String _dateWithDay() {
    DateTime currentDate = DateTime.now();

    Map<int, String> daysOfWeek = {
      1: 'пн',
      2: 'вт',
      3: 'ср',
      4: 'чт',
      5: 'пт',
      6: 'сб',
      7: 'вс',
    };
    Map<int, String> months = {
      1: 'янв',
      2: 'фев',
      3: 'мар',
      4: 'апр',
      5: 'май',
      6: 'июн',
      7: 'июл',
      8: 'авг',
      9: 'сен',
      10: 'окт',
      11: 'ноя',
      12: 'дек',
    };

    String dayOfWeek = daysOfWeek[currentDate.weekday]!;

    String month = months[currentDate.month]!;
    DateTime yesterday = DateTime.now().subtract(Duration(days: 1));
    DateTime tomorrow = DateTime.now().add(Duration(days: 1));

    if (currentDate.day == yesterday.day &&
        currentDate.month == yesterday.month &&
        currentDate.year == yesterday.year) {
      return "$month., Вчера";
    } else if (currentDate.day == DateTime.now().day &&
        currentDate.month == DateTime.now().month &&
        currentDate.year == DateTime.now().year) {
      return "$month., Сегодня";
    } else if (currentDate.day == tomorrow.day &&
        currentDate.month == tomorrow.month &&
        currentDate.year == tomorrow.year) {
      return "$month., Завтра";
    } else {
      return "$month., $dayOfWeek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(
        _dateWithDay(),
        style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.calendar_view_month_outlined),
          onPressed: () {
            //TODO: Логика для открытия меню с троеточием
          },
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {
            //TODO: Логика для открытия меню с троеточием
          },
        ),
      ],
    );
  }
}
