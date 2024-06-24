import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pick/widgets/side_menu.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
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
      leading: Builder(
        builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
      title: Text(
        'Сегодня',
        style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.check),
          onPressed: () {
            //TODO: Сделать как в TickTick
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
