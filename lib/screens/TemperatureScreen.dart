import 'package:flutter/material.dart';

class TemperatureConverter extends StatefulWidget {
  const TemperatureConverter({Key? key}) : super(key: key);

  @override
  _TemperatureConverterState createState() => _TemperatureConverterState();
}

class _TemperatureConverterState extends State<TemperatureConverter> {
  double inputTemperature = 0.0;
  double convertedTemperature = 0.0;
  String selectedUnit = 'Celsius';
  List<String> temperatureUnits = ['Celsius', 'Fahrenheit', 'Kelvin'];

  void convertTemperature(double temperature, String unit) {
    setState(() {
      if (unit == 'Celsius') {
        if (selectedUnit == 'Fahrenheit') {
          convertedTemperature = (temperature * 9 / 5) + 32;
        } else if (selectedUnit == 'Kelvin') {
          convertedTemperature = temperature + 273.15;
        } else {
          convertedTemperature = temperature;
        }
      } else if (unit == 'Fahrenheit') {
        if (selectedUnit == 'Celsius') {
          convertedTemperature = (temperature - 32) * 5 / 9;
        } else if (selectedUnit == 'Kelvin') {
          convertedTemperature = (temperature + 459.67) * 5 / 9;
        } else {
          convertedTemperature = temperature;
        }
      } else if (unit == 'Kelvin') {
        if (selectedUnit == 'Celsius') {
          convertedTemperature = temperature - 273.15;
        } else if (selectedUnit == 'Fahrenheit') {
          convertedTemperature = (temperature * 9 / 5) - 459.67;
        } else {
          convertedTemperature = temperature;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Temperature Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  inputTemperature = double.tryParse(value) ?? 0.0;
                });
                convertTemperature(inputTemperature, selectedUnit);
              },
              decoration: const InputDecoration(
                labelText: 'Temperature',
              ),
            ),
            const SizedBox(height: 16.0),
            DropdownButtonFormField<String>(
              value: selectedUnit,
              items: temperatureUnits.map((String unit) {
                return DropdownMenuItem<String>(
                  value: unit,
                  child: Text(unit),
                );
              }).toList(),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    selectedUnit = newValue;
                  });
                  convertTemperature(inputTemperature, selectedUnit);
                }
              },
              decoration: const InputDecoration(
                labelText: 'Unit',
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Converted Temperature: ${convertedTemperature.toStringAsFixed(2)} $selectedUnit',
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: TemperatureConverter(),
  ));
}
