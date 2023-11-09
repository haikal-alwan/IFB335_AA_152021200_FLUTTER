import 'package:flutter/material.dart';

class AboutRockets extends StatelessWidget {
  const AboutRockets({super.key});

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
                'Informasi tentang Roket',
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
                'Roket adalah kendaraan antariksa yang digunakan untuk\nmengangkut muatan ke luar angkasa. Roket bekerja\nberdasarkan hukum aksi-reaksi Newton, di mana\nsetiap tindakan memiliki reaksi yang sama dan\nsearah tetapi berlawanan.',
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
