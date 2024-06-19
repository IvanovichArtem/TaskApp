import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    super.key,
  });

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
      backgroundColor: Color.fromRGBO(31, 37, 59, 1),
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
            )
          ],
        ),
      ),
    );
  }
}
