import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pick/widgets/matrix_elements.dart';

class Matrix extends StatefulWidget {
  const Matrix({super.key});

  @override
  State<Matrix> createState() => _MatrixState();
}

class _MatrixState extends State<Matrix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MatrixAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Действие при нажатии на кнопку
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Column(
        children: [
          Row(
            children: [
              Spacer(),
              MatrixCell(id: 0),
              SizedBox(
                width: 10,
              ),
              MatrixCell(id: 1),
              Spacer()
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Spacer(),
              MatrixCell(id: 2),
              SizedBox(
                width: 10,
              ),
              MatrixCell(id: 3),
              Spacer()
            ],
          )
        ],
      ),
    );
  }
}

class MatrixAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MatrixAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(
        'Матрица Эйзенхауэра',
        style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.more_vert_rounded),
          onPressed: () {},
        ),
      ],
    );
  }
}
