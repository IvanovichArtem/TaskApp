import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class MenuElement extends StatefulWidget {
  final String name;
  final int notificationsCount;

  const MenuElement(
      {super.key, required this.name, this.notificationsCount = 0});

  @override
  State<MenuElement> createState() => _MenuElementState();
}

class _MenuElementState extends State<MenuElement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        children: [
          Icon(
            Icons.calendar_month,
            color: Colors.orange[400],
          ),
          SizedBox(width: 15),
          Text(
            widget.name,
            style: GoogleFonts.roboto(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(
            widget.notificationsCount.toString(),
            style: GoogleFonts.aBeeZee(),
          ),
          SizedBox(width: 18)
        ],
      ),
    );
  }
}
