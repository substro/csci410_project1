import 'package:csci410_project1/components/theme_button.dart';
import 'package:csci410_project1/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //currency converter body
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeClass.lightTheme,
      // darkTheme: ThemeClass.darkTheme,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          title: const Text(
            "Converter",
          ),
          actions: [
            ThemeButton(
              onPressed: () {},
            )
          ],
        ),
        body: const CurrencyConverterBody(),
      ),
    );
  }
}

class CurrencyConverterBody extends StatelessWidget {
  const CurrencyConverterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center();
  }
}
