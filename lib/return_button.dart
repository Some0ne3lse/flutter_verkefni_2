import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class ReturnButton extends StatelessWidget {
  const ReturnButton(
      {super.key, required this.returnText, required this.onTap});

  final String returnText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.refresh,
            color: Color.fromARGB(255, 179, 252, 246),
          ),
          Text(
            returnText,
            style: GoogleFonts.oswald(
              color: Color.fromARGB(255, 179, 252, 246),
            ),
          )
        ],
      ),
    );
  }
}
