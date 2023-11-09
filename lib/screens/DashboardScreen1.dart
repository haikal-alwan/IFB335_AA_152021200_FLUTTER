import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildNavigationButton(
              context,
              'Konversi Panjang',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LengthConverterPage()),
                );
              },
            ),
            buildNavigationButton(
              context,
              'Konversi Suhu',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TemperatureConverterPage()),
                );
              },
            ),
            buildNavigationButton(
              context,
              'BMI',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BmiPage()),
                );
              },
            ),
            buildNavigationButton(
              context,
              'Kalkulator',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalculatorPage()),
                );
              },
            ),
            buildNavigationButton(
              context,
              'Profil',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNavigationButton(
      BuildContext context, String title, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(title),
    );
  }
}

class LengthConverterPage extends StatelessWidget {
  const LengthConverterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Konversi Panjang'),
      ),
      body: const Center(
        child: Text('Halaman Konversi Panjang'),
      ),
    );
  }
}

class TemperatureConverterPage extends StatelessWidget {
  const TemperatureConverterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Konversi Suhu'),
      ),
      body: const Center(
        child: Text('Halaman Konversi Suhu'),
      ),
    );
  }
}

class BmiPage extends StatelessWidget {
  const BmiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI'),
      ),
      body: const Center(
        child: Text('Halaman BMI'),
      ),
    );
  }
}

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator'),
      ),
      body: const Center(
        child: Text('Halaman Kalkulator'),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: const Center(
        child: Text('Halaman Profil'),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: DashboardPage(),
  ));
}
