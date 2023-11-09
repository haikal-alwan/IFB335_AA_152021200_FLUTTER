import 'package:flutter/material.dart';

class AboutDesserts extends StatelessWidget {
  const AboutDesserts({super.key});

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
              left: 35,
              top: 83,
              child: Container(
                width: 43,
                height: 43,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 13,
                      top: 7,
                      child: Image.network(
                        'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fym2kRTgTxVXqe66jJFTv%2F8c8eb2271bcafb0293019130dace0867.png',
                        width: 18,
                        height: 30,
                        fit: BoxFit.contain,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 100,
              top: 100,
              child: Text(
                'Informasi tentang Gurun',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              left: 100,
              top: 150,
              child: Text(
                'Gurun adalah daerah yang memiliki sedikit hujan\ndan memiliki kondisi kering yang ekstrem.\nBiasanya ditandai dengan pasir, batu, dan\nvegetasi yang sangat sedikit.\nBeberapa contoh gurun terkenal adalah\nSahara, Gobi, dan Atacama.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AboutDesserts(),
  ));
}
