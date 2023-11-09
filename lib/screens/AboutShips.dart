import 'package:flutter/material.dart';

class AboutShips extends StatelessWidget {
  const AboutShips({super.key});

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
                'Informasi tentang Kapal Laut',
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
                'Kapal laut adalah jenis kapal yang dirancang\nkhusus untuk berlayar di laut atau samudra.\nKapal laut digunakan untuk berbagai tujuan,\nmulai dari transportasi penumpang hingga\npengiriman barang melintasi lautan.',
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
    home: AboutShips(),
  ));
}
