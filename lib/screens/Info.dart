import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414,
      height: 896,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: Color(0xFF0E0E12),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 24,
              top: 24,
              child: Container(
                width: 367,
                height: 850,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: const Color(0xFFDFDFDF),
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            ),
            Positioned(
              left: 24,
              top: 24,
              child: Container(
                width: 367,
                height: 418,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 156,
              top: 235,
              child: Text(
                'Alwan',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Inter',
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
            ),
            Positioned(
              left: 99,
              top: 283,
              child: Text(
                '“Orangnya suka flora”',
                textAlign: TextAlign.right,
                style: GoogleFonts.getFont(
                  'Inter',
                  color: const Color(0xFFA2A2B5),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  height: 1.6,
                ),
              ),
            ),
            Positioned(
              left: 149,
              top: 55,
              child: Text(
                'Developer Info',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Inter',
                  color: Colors.black,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
            Positioned(
              left: 63,
              top: 386,
              child: Container(
                width: 288,
                height: 304,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fym2kRTgTxVXqe66jJFTv%2F4ef9a543af88e8dbafee453b4f5cb442.png',
                    ),
                    fit: BoxFit.contain,
                  ),
                  border: Border.all(
                    color: const Color(0x26CFCFFC),
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            Positioned(
              left: 63,
              top: 722,
              child: Container(
                width: 288,
                height: 48,
                decoration: BoxDecoration(
                  color: const Color(0x19000000),
                  border: Border.all(
                    color: const Color(0x26000000),
                  ),
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 124,
                      top: 14,
                      child: Text(
                        'Home',
                        style: GoogleFonts.getFont(
                          'Inter',
                          color: const Color(0xFF000118),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          height: 1.4,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 146,
              top: 96,
              child: Container(
                width: 124,
                height: 124,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: const Color(0xFFC4C4C4),
                  borderRadius: BorderRadius.circular(62),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
