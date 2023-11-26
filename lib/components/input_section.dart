import 'package:csci410_project1/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InputSection extends StatelessWidget {
  final String inputUnit;
  final double inputValue;
  final Function(String?)? onInputUnitChanged;
  final Function(String) onInputValueChanged;

  const InputSection({
    required this.inputUnit,
    required this.inputValue,
    required this.onInputUnitChanged,
    required this.onInputValueChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(
      context,
      listen: false,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Add dropdown for input unit
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Input Unit:'),
            const SizedBox(width: 10),
            DropdownButton<String>(
              value: inputUnit,
              items: const [
                DropdownMenuItem<String>(
                  value: 'meters',
                  child: Text('Meters'),
                ),
                DropdownMenuItem<String>(
                  value: 'feet',
                  child: Text('Feet'),
                ),
                DropdownMenuItem<String>(
                  value: 'kilometers',
                  child: Text('Kilometers'),
                ),
                DropdownMenuItem<String>(
                  value: 'miles',
                  child: Text('Miles'),
                ),
                DropdownMenuItem<String>(
                  value: 'millimeters',
                  child: Text('Millimeters'),
                ),
                DropdownMenuItem<String>(
                  value: 'centimeters',
                  child: Text('Centimeters'),
                ),
                DropdownMenuItem<String>(
                  value: 'yards',
                  child: Text('Yards'),
                ),
                DropdownMenuItem<String>(
                  value: 'inches',
                  child: Text('Inches'),
                ),
                DropdownMenuItem<String>(
                  value: 'micrometers',
                  child: Text('Micrometers'),
                ),
                DropdownMenuItem<String>(
                  value: 'nanometers',
                  child: Text('Nanometers'),
                ),
              ],
              onChanged: onInputUnitChanged,
            ),
          ],
        ),

        TextField(
          onChanged: onInputValueChanged,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            constraints: const BoxConstraints(maxWidth: 250, maxHeight: 250),
            labelText: 'Input Value',
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
            labelStyle: TextStyle(color: Colors.grey[500]),
            focusColor: themeProvider.accentColor,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: themeProvider
                    .accentColor, // Change the color to your desired hover color
              ),
            ),
          ),
        ),

        const SizedBox(height: 20),
      ],
    );
  }
}
