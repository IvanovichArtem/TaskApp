import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pick/widgets/side_menu.dart';

class Habit extends StatefulWidget {
  const Habit({super.key});

  @override
  State<Habit> createState() => _HabitState();
}

class _HabitState extends State<Habit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TaskAppBar(),
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

class TaskAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TaskAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(
        'Привычка',
        style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.pie_chart_outline_rounded),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.event_note_rounded),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {},
        ),
      ],
    );
  }
}
