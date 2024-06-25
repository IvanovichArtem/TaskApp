import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class MatrixCell extends StatefulWidget {
  final id;
  const MatrixCell({required this.id});

  @override
  State<MatrixCell> createState() => _MatrixCellState();
}

class _MatrixCellState extends State<MatrixCell> {
  Map Names = {
    0: ['Срочно и важно', 'I', Colors.red],
    1: ['Не срочно, но важно', 'II', Colors.yellow],
    2: ['Срочно, но не важно', 'III', Colors.blue],
    3: ['Не срочно и не важно', 'IV', Colors.green]
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SizedBox(
          height: 3.4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RomanNumeralIcon(
                numeral: Names[widget.id][1], color: Names[widget.id][2]),
            SizedBox(
              width: 5,
            ),
            Text(
              Names[widget.id][0],
              style: GoogleFonts.roboto(
                  color: Names[widget.id][2],
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ],
        )
      ]),
      width: 170,
      height: 320,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8))),
    );
  }
}

class RomanNumeralIcon extends StatelessWidget {
  final String numeral;
  final Color color;
  final double size;

  RomanNumeralIcon({
    required this.numeral,
    required this.color,
    this.size = 18,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Text(
        numeral,
        style: GoogleFonts.openSans(
          color: Colors.white,
          fontSize: 10, // Размер шрифта для текста
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
