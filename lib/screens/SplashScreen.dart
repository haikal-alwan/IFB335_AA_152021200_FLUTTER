import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414,
      height: 896,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 40,
              top: 492,
              child: Container(
                width: 334,
                height: 64,
                decoration: BoxDecoration(
                  color: const Color(0xFF131313),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 133,
                      top: 16,
                      child: Text(
                        'Masuk',
                        style: GoogleFonts.getFont(
                          'League Spartan',
                          color: const Color(0xFFB8B8B8),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.7,
                          height: 1.4,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 40,
              top: 340,
              child: Image.network(
                'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fym2kRTgTxVXqe66jJFTv%2Fcc0e355daf128e8ec5aa3da9b0933e5a.png',
                width: 334,
                height: 92,
                fit: BoxFit.contain,
              ),
            )
          ],
        ),
      ),
    );
  }
}
