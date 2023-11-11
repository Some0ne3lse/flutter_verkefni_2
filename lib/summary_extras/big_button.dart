import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  const BigButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.icon,
  });

  final String text;
  final void Function() onTap;
  // final double width;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          elevation: 40,
          foregroundColor: const Color.fromARGB(255, 222, 220, 253),
          backgroundColor: const Color.fromARGB(58, 59, 48, 227),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) icon!,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
