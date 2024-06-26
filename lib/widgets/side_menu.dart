import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'menu_element.dart';
import 'package:pick/services/sqlite_service.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  // All data
  List<Map<String, dynamic>> myData = [];

  bool _isLoading = true;
  // This function is used to fetch all data from the database
  void _refreshData() async {
    final data = await DatabaseHelper.getItems();
    setState(() {
      myData = data;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _refreshData(); // Loading the data when the app starts
  }

  String _truncateText(String text, {int maxLength = 10}) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return text.substring(0, maxLength) + '...';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF1F253B),
      child: Padding(
        padding: EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 15),
                CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/images/profile/default_profile_img.jpg'),
                  radius: 26,
                ),
                SizedBox(width: 13),
                Text(
                  _truncateText('ARteM'),
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                  overflow: TextOverflow.ellipsis,
                ),
                Spacer(),
                Wrap(
                  spacing: 5,
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(width: 10)
              ],
            ),
            SizedBox(height: 30),
            Expanded(
                child: ListView(
              padding: EdgeInsets.all(6),
              children: [
                for (var item in myData)
                  MenuElement(
                    name: item['title'],
                  ),
              ],
            )),
            SizedBox(height: 60),
            Row(
              children: [
                SizedBox(width: 15),
                Row(children: [
                  Wrap(spacing: 8, children: [
                    Icon(
                      Icons.add_box_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      'Добавить',
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )
                  ])
                ]),
                Spacer(),
                Icon(
                  Icons.list_rounded,
                  color: Colors.grey,
                  size: 28,
                ),
                SizedBox(width: 20)
              ],
            ),
            SizedBox(height: 15)
          ],
        ),
      ),
    );
  }
}
