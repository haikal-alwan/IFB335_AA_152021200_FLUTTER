import 'package:flutter/material.dart';

class LengthConverter extends StatefulWidget {
  const LengthConverter({Key? key}) : super(key: key);

  @override
  _LengthConverterState createState() => _LengthConverterState();
}

class _LengthConverterState extends State<LengthConverter> {
  TextEditingController kmController = TextEditingController();
  TextEditingController hmController = TextEditingController();
  TextEditingController damController = TextEditingController();
  TextEditingController mController = TextEditingController();
  TextEditingController dmController = TextEditingController();
  TextEditingController cmController = TextEditingController();
  TextEditingController mmController = TextEditingController();

  @override
  void dispose() {
    kmController.dispose();
    hmController.dispose();
    damController.dispose();
    mController.dispose();
    dmController.dispose();
    cmController.dispose();
    mmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Length Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildLengthInput('Kilometer', kmController, 'km', 100000),
            buildLengthInput('Hectometer', hmController, 'hm', 10000),
            buildLengthInput('Decameter', damController, 'dam', 1000),
            buildLengthInput('Meter', mController, 'm', 1),
            buildLengthInput('Decimeter', dmController, 'dm', 0.1),
            buildLengthInput('Centimeter', cmController, 'cm', 0.01),
            buildLengthInput('Millimeter', mmController, 'mm', 0.001),
          ],
        ),
      ),
    );
  }

  Widget buildLengthInput(String label, TextEditingController controller,
      String unit, double factor) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      onChanged: (value) {
        if (value.isEmpty) {
          clearAllInputs();
          return;
        }

        final double inputValue = double.tryParse(value) ?? 0.0;

        setState(() {
          kmController.text = (inputValue * (factor / 1000000)).toString();
          hmController.text = (inputValue * (factor / 100000)).toString();
          damController.text = (inputValue * (factor / 10000)).toString();
          mController.text = (inputValue * (factor / 1)).toString();
          dmController.text = (inputValue * (factor / 0.1)).toString();
          cmController.text = (inputValue * (factor / 0.01)).toString();
          mmController.text = (inputValue * (factor / 0.001)).toString();
        });
      },
      decoration: InputDecoration(
        labelText: label,
        suffixText: unit,
      ),
    );
  }

  void clearAllInputs() {
    kmController.clear();
    hmController.clear();
    damController.clear();
    mController.clear();
    dmController.clear();
    cmController.clear();
    mmController.clear();
  }
}

void main() {
  runApp(const MaterialApp(
    home: LengthConverter(),
  ));
}
